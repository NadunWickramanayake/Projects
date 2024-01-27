-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 08:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hometeq`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodId` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodId`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'Acer Aspire Vero', 'acer_aspire_vero_icon.jpg', 'acer_aspire_vero.jpg', 'The Acer Aspire Vero is a fantastic option for eco-conscious buyers, as it’s made of recycled materials.', '\r\nIt’s no slouch in the performance department either given the specs.\r\n This laptop has an Intel Core i7-1195G7 CPU, Intel Iris Xe graphics, 16GB of RAM, and 512GB of NVMe SSD storage—a killer package for under $500. \r\nIt’s zippy enough for everyday tasks like watching Hulu, writing papers, browsing social media, and so on.\r\nThe 15.6-inch display should provide clean visuals thanks to the 1920×1080 resolution. This is an awesome deal for an everyday laptop.', '579.00', 8),
(2, 'Asus Zenbook', 'asus_zenbook_icon.png', 'asus_zenbook.png', '\r\nThe Asus Zenbook OLED laptop is a fantastic machine for work or everyday use.', '\r\nIt features an Intel Core i5 CPU, Intel Iris Xe graphics, 8GB of RAM, and 256GB of SSD storage. \r\nIn other words, this laptop should be able to zip right through tasks like browsing the web, watching YouTube, spreadsheet work, and so on. \r\nThe 14-inch OLED display has a resolution of 2880×1800 and, according to Asus, a maximum brightness level of 400 nits. OLED displays tend to be more colorful, so you should expect a lovely picture. \r\nThe touchpad also doubles as a number pad, which is rather unique. This is an excellent deal and a great laptop for a college student or a young professional.', '549.00', 6),
(3, 'Samsung Chromebook', 'samsung_chromebook_icon.jpg', 'samsung_chromebook.jpg', 'If you’re looking for a barebones machine, the Samsung Chromebook 4 is a good option. ', 'Inside, you’ll find an Intel Celeron N4020 CPU, Intel UHD Graphics 600, 4GB of RAM, and 64GB of eMMC storage. \r\nThat’s not a ton of power, but it’s enough for everyday tasks like checking e-mail and browsing the web.\r\n The display is on the smaller side at 11.6-inches and has a resolution of 1366×768.\r\n It’s not the sharpest picture we’ve ever seen on a Chromebook, but it’s fine for scrolling through social media and such.\r\n For a little over $100, it’s a good deal.', '125.00', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
