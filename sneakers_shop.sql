-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 02:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sneakers_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(6, 35, 3, 1, 11000),
(7, 9, 3, 1, 7500000),
(8, 13, 3, 1, 8500000),
(9, 2, 4, 1, 26000000),
(10, 11, 4, 1, 12500000),
(11, 3, 5, 1, 7000000),
(12, 8, 5, 1, 7500000),
(13, 41, 5, 1, 11500000),
(14, 6, 6, 3, 33000000),
(15, 10, 7, 1, 16000000),
(16, 26, 7, 1, 1850000),
(17, 13, 7, 1, 8500000),
(18, 30, 7, 1, 250000),
(19, 38, 8, 2, 14000000);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(3, 'deptraivl@gmail.com', '0936330075', 'Khoa Dang', '475 dien bien phu', 0, 0, 'giao hang gio hanh chinh'),
(4, 'minhkhoa770@gmail.com', '0936330075', 'Khoa Dep Trai', '123 Le Hong Phong', 0, 0, 'giao hang gio hanh chinh'),
(5, 'deptraivl@gmail.com', '123', 'Khoa Dang', 'duong 3.2', 0, 0, 'giao hang 10h'),
(6, 'minhkhoa770@gmail.com', '12345789', 'Khoa Dep Trai', '123 Le Hong Phong', 0, 0, 'giao hang gio han hchinh'),
(7, 'mkhoa69@gmail.com', '123456789', 'khoa ne', '123 le hong phong', 0, 0, 'giao hang luc 8h toi'),
(8, 'deptraivl@gmail.com', '123', 'Khoa Äáº·ng', 'asdasd', 0, 0, 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'NIKE', NULL),
(2, 'ADIDAS', NULL),
(3, 'YEEZY', NULL),
(4, 'NEW BALANCE', NULL),
(5, 'WOMEN', NULL),
(6, 'KIDS', NULL),
(7, 'CLOTHING', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'BLACK-WHITE-HIGHGEY', '#BWHR', 'jordan1lowlightsmoke.png'),
(2, 2, 'BLACK-WHITE-RED', '#DC143C', 'jordan1chicago.png'),
(3, 3, 'BlACK-WHITE-HIGHPINK', '#FFE4E1', 'jordan1at.png'),
(4, 4, 'BLACK-WHITE-PURPLE', '#4B0082', 'jordan1courtpurple.png'),
(5, 5, 'BLACK-WHITE-ORANGE', '#FF8C00', 'jordan1satinsb.png'),
(6, 6, 'BLACK-WHITE-BLUE', '#87CEFA', 'jordan1universityblue.png'),
(7, 7, 'BLACK-WHITE-BROWN', '#8B4513', 'jordan1darkmocha.png'),
(8, 8, 'BLACK-WHITE-YELLOW-ORANGE', '#FFFF00', 'jordan1voltgold.png'),
(9, 9, 'BLACK-WHITE-TIEDYE', '#00FFFF', 'jordan1tie.png'),
(10, 10, 'BLACK-WHITE-REDD', '#A52A2A', 'jordan1banned.png'),
(11, 11, 'BLACK-WHITE-REDblacktoe', '#FF0000', 'jordan1satinblacktoe.png'),
(12, 12, 'BLACK-WHITE-PINEGREEN', '#228B22', 'jordan1pinegreen2.0.png'),
(13, 13, 'BLACK-WHITE-BlUERoyalToe', '#0000CD', 'jordan1royaltoe.png'),
(14, 14, 'BLACK-WHITE-REDbredtoe', '#BWRbredtoe', 'jordan1bredtoe.png'),
(15, 15, 'BLACK-WHITE-SILVER', '#BWSilver', 'jordan1silvertoe.png'),
(16, 16, 'BLACK-WHITE-GREENlucky', '#32CD32', 'jordan1luckygreen.png'),
(20, 21, 'BLACK-WHITE-HIGHGREY-', '#BWHG-', 'jordan1lowlightsmoke.png'),
(21, 22, 'BLACK-WHITE-YELLOW-RED-BLUE', '#BWYRB', 'addidashumanracebbc.png'),
(22, 23, 'BLACK-WHITE-RED-BLUE-', '#BWRB-', 'addidashumanracebbc.png'),
(23, 24, 'BLACK-BLUE-RED', '#BBR', 'adidastennis.png'),
(24, 25, 'WHITE-REDHEART', '#WRH', 'adidasstandmithhearts.png'),
(25, 26, 'WHITE-GREENstandmith', '#FFFFFF', 'adidasstandmithgreen.png'),
(26, 27, 'BLACK-WHITEslide', '#BWslide', 'adidasalphabounceslide.png'),
(27, 29, 'BLACK-WHITE-BLUE-YELLOW', '#BWBY', 'nikeairzoombb.png'),
(28, 30, 'BLACKTEE', '#BLACKT', 'teedrewblack.png'),
(29, 31, 'TEEDREWBLACK', '#000000', 'teedrewblack.png'),
(30, 32, 'TEEDREWYELLOW', '#FFD700', 'teedrewyellow.png'),
(31, 33, 'TEESUPREMEPINK', '#FFC0CB', 'teesupremepink.png'),
(32, 34, 'BLACK-WHITEultraboost', '#000000', 'ultraboost4.0coreblack.png'),
(33, 35, 'YEEZY 350 BELUGA 2.0', '#C0C0C0', 'yeezy350begula2.0.png'),
(34, 36, 'GREY-REDLINE', '#GR', 'yeezy350begula2.0.png'),
(35, 37, 'GREENYEEZY', '#ADFF2F', 'yeezy350glow.png'),
(36, 38, 'MONO CLAY', '#FFE4B5', 'yeezy350monoclay.png'),
(37, 39, 'BLACK-STRIPE', '#000000', 'yeezy350oreo.png'),
(38, 40, 'BLACK-REDSTRIPEyeezy', '#000000', 'yeezy350redstripe.png'),
(39, 41, 'BLACKSTATIC', '#000000', 'yeezy350staticblack.png'),
(40, 42, 'WHITEEEGREYY', '#WGGG', 'jordan11cribbootie.jpg'),
(41, 43, 'WHITE-GREY', '#A9A9A9', 'jordan11cribbootie.jpg'),
(42, 44, 'KIDS-WHITE-ORANGE', '#FF8C00', 'jordan1cribbootieshattered.jpg'),
(43, 45, 'YELLOW-WHITE-BLACK', '#FFD700', 'jordan4retrotd.jpg'),
(44, 46, 'BLAZERBLUE', '#1E90FF', 'blazerblue.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `url`) VALUES
(1, 'HOME', NULL),
(2, 'PRODUCTS', NULL),
(3, 'CART', NULL),
(4, 'NEWS', NULL),
(5, 'CONTACT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '5US', 'JORDAN 1 LOW LIGHT SMOKE GREY\r\n', 7500000, 0, 'title', 1, 0, 'details', '2022-02-25 13:14:26', '2022-02-25 13:14:26'),
(2, 1, '9.5US', 'AIR JORDAN 1 CHICAGO 15', 26000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Red</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe that started it all. In 1984, Nike unveiled the Nike Air Jordan and captivated the world. The design merged sports and fashion worlds with its luxe appeal, and now is a street classic. In 2015, Jordan Brand reissued the Chicago colorway in its original form with the Jordan 1 Retro Chicago (2015).\r\n\r\nThe Jordan 1 Retro Chicago (2015) features white, red, and black premium leather uppers with white panels used as a base, Varsity Red overlays wrapping around it, and deep black hues rounding out the Nike \"Swooshes\" and other accents. From there, a minimal \"Nike Air\" logo and a red outsole to match the traditional colors of the famous Chicago Bulls complete the design.\r\n\r\nThe Jordan 1 Retro Chicago (2015) released in May of 2015 and retailed for $160.</p>', '2022-02-25 13:27:36', '2022-02-25 13:27:36'),
(3, 1, '6.5US', 'AIR JORDAN 1 ATMOSPHERE', 7000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & HighPink</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">12/22/2021\r\n</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The women\'s Air Jordan 1 High Atmosphere follows the classic Black Toe color blocking format with a white and dark navy leather upper. Light pink patent leather on the ankle and vamp nods to the pink bubblegum that Michael Jordan chewed throughout his time on the hardwood. Woven Nike tongue labels and a signature Jordan Wings logo draw inspiration from the original 1985 Jordan 1 design.\r\n\r\nThe women\'s Air Jordan 1 High Atmosphere released in December of 2021 and retailed for $170.</p>', '2022-02-25 13:54:46', '2022-02-25 13:54:46'),
(4, 1, '9US', 'AIR JORDAN 1 COURT PURPLE', 5800000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Purple</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The women\'s Air Jordan 1 Court Purple (W) features a white leather upper with hits of Court Purple on the Swoosh and collar. From there, a Court Purple Wings logo is prominent at the ankle, similar to other classic Jordan 1s. The women\'s Air Jordan 1 Court Purple (W) released in June of 2021 and retailed for $170.</p>', '2022-02-25 14:04:15', '2022-02-25 14:04:15'),
(5, 1, '8.5US', 'AIR JORDAN 1 SATIN SB', 12000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:07:34', '2022-02-25 14:07:34'),
(6, 1, '10US', 'AIR JORDAN 1 UNIVERSITY BLUE', 11000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:09:10', '2022-02-25 14:09:10'),
(7, 1, '8US', 'AIR JORDAN 1 DARK MOCHA', 14000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:11:14', '2022-02-25 14:11:14'),
(8, 1, '7US', 'AIR JORDAN 1 VOLT GOLD', 7500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:13:04', '2022-02-25 14:13:04'),
(9, 1, '4US', 'AIR JORDAN 1 HIGH TIE DYE WMNS', 7500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:15:03', '2022-02-25 14:15:03'),
(10, 1, '8.5US', 'AIR JORDAN 1 BANNED', 16000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:17:21', '2022-02-25 14:17:21'),
(11, 1, '7.5US', 'AIR JORDAN 1 SATIN BLACK TOE', 12500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:18:50', '2022-02-25 14:18:50'),
(12, 1, '10.5US', 'AIR JORDAN 1 HIGH PINE GREEN 2.0', 7000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:22:17', '2022-02-25 14:22:17'),
(13, 1, '7.5US', 'AIR JORDAN 1 ROYAL TOE', 8500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:24:22', '2022-02-25 14:24:22'),
(14, 1, '11US', 'AIR JORDAN 1 BRED TOE', 15000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:27:38', '2022-02-25 14:27:38'),
(15, 1, '6US', 'AIR JORDAN 1 SILVER TOE', 7500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:30:24', '2022-02-25 14:30:24'),
(16, 1, '11US', 'AIR JORDAN 1 LUCKY GREEN', 7500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:32:48', '2022-02-25 14:32:48'),
(21, 1, '8US', 'JORDAN 1 LOW LIGHT SMOKE GREY', 7500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:45:31', '2022-02-25 14:45:31'),
(22, 2, '9.5US', 'HUMAN RACE BBC', 2500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:47:48', '2022-02-25 14:47:48'),
(23, 2, '10US', 'HUMAN RACE BBC', 2500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:49:55', '2022-02-25 14:49:55'),
(24, 2, '9.5US', 'Adidas Tennis Human Race BBC', 2000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:51:29', '2022-02-25 14:51:29'),
(25, 2, '7.5US', 'STAN SMITH HEARTS', 2500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:53:02', '2022-02-25 14:53:02'),
(26, 2, '8US', 'STAN SMITH GREEN', 1850000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:54:28', '2022-02-25 14:54:28'),
(27, 2, '9US', 'ADIDAS ALPHABOUNCE SLIDE', 1150000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 14:56:33', '2022-02-25 14:56:33'),
(29, 1, '12US', 'NIKE AIR ZOOM BB SISTERHOOD', 6000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:17:32', '2022-02-25 15:17:32'),
(30, 7, 'M', 'TEE DREW BLACK', 250000, 0, 'title', 1, 0, 'details', '2022-02-25 15:37:20', '2022-02-25 15:37:20'),
(31, 7, 'M', 'TEE DREW BLACK', 2500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:38:44', '2022-02-25 15:38:44'),
(32, 7, 'L', 'TEE DREW YELLOW', 2500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:40:26', '2022-02-25 15:40:26'),
(33, 7, 'S', 'TEE SUPREME PINK', 2700000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:42:00', '2022-02-25 15:42:00'),
(34, 2, '12US', 'ULTRA BOOST 4.0 CORE BLACK', 4000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:43:24', '2022-02-25 15:43:24'),
(35, 3, '10US', 'YEEZY 350 BELUGA 2.0', 11000, 0, 'title', 1, 0, 'details', '2022-02-25 15:45:10', '2022-02-25 15:45:10'),
(36, 3, '10US', 'YEEZY 350 BELUGA 2.0', 11000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:46:49', '2022-02-25 15:46:49'),
(37, 3, '9US', 'YEEZY 350 GLOW IN THE DARK', 14500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:48:26', '2022-02-25 15:48:26'),
(38, 3, '11US', 'YEEZY 350 MONO CLAY', 7000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:50:21', '2022-02-25 15:50:21'),
(39, 3, '10US', 'YEEZY 350 OREO', 8500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:52:17', '2022-02-25 15:52:17'),
(40, 3, '9US', 'YEEZY 350 RED STRIPE', 9000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:54:09', '2022-02-25 15:54:09'),
(41, 3, '4US', 'YEEZY 350 STATIC BLACK', 11500000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-02-25 15:55:42', '2022-02-25 15:55:42'),
(42, 6, '1C', 'JORDAN 11 CRIB BOOTIE', 1100000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-03-05 16:49:57', '2022-03-05 16:49:57'),
(43, 6, '2C', 'JORDAN 11 CRIB BOOTIE \"Cool Grey\"\r\n\r\n', 1100000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-03-05 16:52:55', '2022-03-05 16:52:55'),
(44, 6, '3C', 'JORDAN 1 CRIB BOOTIE \"Shattered Backboard\"', 2300000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-03-05 16:56:47', '2022-03-05 16:56:47'),
(45, 6, '4C', 'AIR JORDAN 4 RETRO TD\r\n\"Lightning 2021\"', 3200000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-03-05 17:21:52', '2022-03-05 17:21:52'),
(46, 1, '10.5US', 'BLAZER MID SACAI BLUE', 6000000, 0, 'title', 1, 0, '<table class =\"table table-striped\">\r\n<tbody>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Color: </td> <td class =\"techSpecTD2\">Black, White & Blue</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Brand: </td> <td class =\"techSpecTD2\">Jordan</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Season: </td> <td class =\"techSpecTD2\">Spring/Summer</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Usage: </td> <td class =\"techSpecTD2\">Fitness</td> </tr>\r\n<tr class =\"techSpecRow\"> <td class =\"techSpecTD1\"> Release Date: </td> <td class =\"techSpecTD2\">5/30/2015</td> </tr>\r\n</tbody>\r\n</table>\r\n<p>The shoe brings genuine University Blue leather to the ankle, heel, toe and outsole, black on the Swoosh and collar and contrasts it with a white quarter panel, midsole, tongue and toe box. A black Wings logo with University Blue branding on the tongue finish off the model\'s clean and classic detailing.</p>', '2022-04-04 14:06:16', '2022-04-04 14:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`, `content`) VALUES
(1, 'jordan1slide4.jpg', 'AIR JORDAN 1 HYPER ROYAL', 'HYPER ON EXPERIENCE'),
(2, 'jordan1slide3.jpg', 'AIR JORDAN 1 UNIVERSITY BLUE', 'JORDAN BRAND FOR SPORT'),
(3, 'jordan1slide1.png', 'AIR JORDAN 1 ROYAL TOE\r\n', '- BEST SELLER ITEM -'),
(4, 'jordan1slide2.jpg', 'AIR JORDAN 1 DARK MOCHA', 'BEST PRICE ITEM NIKE AIR JORDAN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(1, 'deptraivl@gmail.com', '$2a$12$agbs46DbJyRIE6ceFboCROrDuZsaNbxZjQ5npd4dcXJ8nfGDPRR2y', 'Khoa Dang', 'a'),
(2, 'minhkhoa770@gmail.com', '$2a$12$hPYpRRHtKuJLbNelknu.JO98t2eE15HmT52VI2bhQlNLwbXyJoxYG', 'Khoa Dep Trai', '123 Le Hong Phong'),
(3, 'mkhoa69@gmail.com', '$2a$12$Dre7wlG7vNC9PUtTbzsMWeWuuSBt1EjMtOksJBJzRdtcAJDhyY16y', 'khoa ne', '123 le hong phong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
