-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kicksotd`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(3) NOT NULL,
  `nama_brand` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `nama_brand`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '2021-04-16 02:20:55', '2021-04-16 02:20:55'),
(2, 'Converse', '2021-04-16 02:51:56', '2021-04-16 02:51:56'),
(3, 'Vans', '2021-04-16 02:59:28', '2021-04-16 02:59:28'),
(4, 'Ventela', '2021-04-16 03:19:16', '2021-04-16 03:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Premium\r\n\r\n', '2021-04-16 02:04:45', '2021-04-16 02:04:45'),
(2, 'Authentic', '2021-04-16 02:20:21', '2021-04-16 02:20:21'),
(3, 'UA', '2021-04-16 02:20:25', '2021-04-16 02:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(3) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `harga_product` int(255) NOT NULL,
  `rating_product` int(1) DEFAULT NULL,
  `gambar1` varchar(255) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL,
  `id_kategori` int(3) NOT NULL,
  `id_brand` int(3) NOT NULL,
  `id_promo` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `harga_product`, `rating_product`, `gambar1`, `gambar2`, `gambar3`, `id_kategori`, `id_brand`, `id_promo`, `created_at`, `updated_at`, `user`) VALUES
(1, 'Air Force 1 Low “Triple White”', 749000, 5, 'Air Force 1 Low “Triple White” 1.jpg', 'Air Force 1 Low “Triple White” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:23:29', '2021-04-17 09:48:48', 'adminjuan'),
(2, 'Air Force 1 Low “Triple Black”', 749000, 5, 'Air Force 1 Low “Triple Black” 1.jpg', 'Air Force 1 Low “Triple Black” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:26:55', '2021-04-17 09:48:29', 'adminpeter'),
(3, 'Air Force 1 Low “Wheat”', 799000, 5, 'Air Force 1 Low “Wheat” 1.jpg', 'Air Force 1 Low “Wheat” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:30:06', '2021-04-16 02:30:06', NULL),
(4, 'Air Jordan 1 Low “Black Toe”', 749000, 5, 'Air Jordan 1 Low “Black Toe” 1.jpg', 'Air Jordan 1 Low “Black Toe” 2.jpg', NULL, 1, 1, 2, '2021-04-16 02:31:26', '2021-05-02 11:25:54', 'adminpeter'),
(5, 'Air Jordan 1 Low “Court Purple”', 799000, 5, 'Air Jordan 1 Low “Court Purple” 1.jpg', 'Air Jordan 1 Low “Court Purple” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:35:24', '2021-04-17 10:16:14', 'adminjuan'),
(6, 'Air Jordan 1 Low “Mystic Green”', 799000, NULL, 'Air Jordan 1 Low “Mystic Green” 1.jpg', 'Air Jordan 1 Low “Mystic Green” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:38:30', '2021-04-16 02:38:30', NULL),
(7, 'Air Jordan 4 Retro “Black Cat”', 799000, NULL, 'Air Jordan 4 Retro “Black Cat” 1.jpg', 'Air Jordan 4 Retro “Black Cat” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:43:47', '2021-04-16 02:43:47', NULL),
(8, 'Air Jordan 4 Retro “Green Glow”', 749000, NULL, 'Air Jordan 4 Retro “Green Glow” 1.jpg', 'Air Jordan 4 Retro “Green Glow” 2.jpeg', NULL, 1, 1, 1, '2021-04-16 02:46:06', '2021-04-16 02:46:06', NULL),
(9, 'Air Jordan 4 Retro “Lightning Tour Yellow”', 799000, NULL, 'Air Jordan 4 Retro “Lightning Tour Yellow” 1.jpg', 'Air Jordan 4 Retro “Lightning Tour Yellow” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:47:08', '2021-04-16 02:47:08', NULL),
(10, 'Nike Air Max 97 “Black White”', 749000, NULL, 'Nike Air Max 97 “Black White” 1.jpg', 'Nike Air Max 97 “Black White” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:48:03', '2021-04-16 02:48:03', NULL),
(11, 'Nike Air Max 97 “Triple Black”', 749000, NULL, 'Nike Air Max 97 “Triple Black”1.jpeg', 'Nike Air Max 97 “Triple Black” 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:50:09', '2021-04-16 02:50:09', NULL),
(12, 'Nike Air Max 97 “Triple White”', 749000, NULL, 'Nike Air Max 97 “Triple White” 1.jpg', 'Nike-Air-Max-97-Triple-White 2.jpg', NULL, 1, 1, 1, '2021-04-16 02:51:22', '2021-04-16 02:51:22', NULL),
(13, 'Converse Chuck Taylor All Star ‘70 Low “Black”', 589000, 5, 'Converse Chuck Taylor All Star ‘70 Low “Black” 1.jpg', 'Converse Chuck Taylor All Star ‘70 Low “Black” 2.jpg', NULL, 1, 2, 1, '2021-04-16 02:54:21', '2021-04-16 02:54:21', NULL),
(14, 'Converse Chuck Taylor All Star ‘70 Low “White”', 589000, NULL, 'Converse Chuck Taylor All Star ‘70 Low “White” 1.jpg', 'Converse Chuck Taylor All Star ‘70 Low “White” 2.jpg', NULL, 1, 2, 1, '2021-04-16 02:56:51', '2021-04-16 02:56:51', NULL),
(15, 'Converse Chuck Taylor All Star ‘70 Low “Obsidian Navy”', 749000, NULL, 'Converse Chuck Taylor All Star ‘70 Low “Obsidian Navy” 1.jpg', 'Converse Chuck Taylor All Star ‘70 Low “Obsidian Navy” 2.jpg', NULL, 1, 2, 1, '2021-04-16 02:57:41', '2021-04-16 02:57:41', NULL),
(16, 'Vans Authentic “Black White” Global Release', 789000, 5, 'Vans Authentic “Black White” Global Release 1.jpg', 'Vans Authentic “Black White” Global Release 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:00:59', '2021-04-16 03:13:50', NULL),
(17, 'Vans Authentic Checkerboard', 789000, 5, 'Vans Authentic Checkerboard 1.jpg', 'Vans Authentic Checkerboard 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:06:28', '2021-04-16 03:06:28', NULL),
(18, 'Vans Authentic Flames Checkerboard', 978000, 5, 'Vans Authentic Flames Checkerboard 1.jpg', 'Vans Authentic Flames Checkerboard 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:07:17', '2021-04-16 03:07:17', NULL),
(19, 'Vans Old Skool “Black White”', 749000, 5, 'Vans Old Skool “Black White” 1.jpg', 'Vans Old Skool “Black White” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:09:18', '2021-04-16 03:09:18', NULL),
(20, 'Vans Old Skool “Checkerboard”', 749000, 5, 'Vans Old Skool “Checkerboard” 1.jpg', 'Vans Old Skool “Checkerboard” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:10:22', '2021-04-16 03:10:22', NULL),
(21, 'Vans Old Skool “Flames”', 1300000, NULL, 'Vans Old Skool “Flames” 1.jpg', 'Vans Old Skool “Flames” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:12:01', '2021-04-16 03:12:01', NULL),
(22, 'Vans Slip On “Black White”', 788000, NULL, 'Vans Slip On “Black White” 1.jpg', 'Vans Slip On “Black White” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:13:36', '2021-04-16 03:13:36', NULL),
(23, 'Vans Slip On “Flames”', 1200000, NULL, 'Vans Slip On “Flames” 1.jpg', 'Vans Slip On “Flames” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:16:48', '2021-04-16 03:16:48', NULL),
(24, 'Vans Slip On “Checkerboard”', 788000, NULL, 'Vans Slip On “Checkerboard” 1.jpg', 'Vans Slip On “Checkerboard” 2.jpg', NULL, 2, 3, 1, '2021-04-16 03:17:57', '2021-04-16 03:17:57', NULL),
(25, 'Ventela P’76 (Public) “Black Natural”', 379000, NULL, 'Ventela P’76 (Public) “Black Natural” 1.jpg', 'Ventela P’76 (Public) “Black Natural” 2.jpg', NULL, 2, 4, 1, '2021-04-16 03:20:10', '2021-04-16 03:20:10', NULL),
(26, 'Ventela P\'76 (Public) Cream', 379000, NULL, 'Ventela P\'76 (Public) Cream 1.jpg', 'Ventela P\'76 (Public) Cream 2.jpg', NULL, 2, 4, 1, '2021-04-16 03:22:27', '2021-04-16 03:22:27', NULL),
(27, 'Ventela P\'76 (Public) Dark Green', 379000, 5, 'Ventela P\'76 (Public) Dark Green 1.jpg', 'Ventela P\'76 (Public) Dark Green 2.jpg', NULL, 2, 4, 1, '2021-04-16 03:24:36', '2021-04-16 03:24:36', NULL),
(28, 'Ventela Back To 70s', 400000, 5, 'Ventela Back To 70s 1.jpg', 'Ventela Back To 70s 2.jpg', NULL, 2, 4, 2, '2021-04-18 07:11:30', '2021-04-18 07:11:30', 'adminpeter');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id_promo` int(3) NOT NULL,
  `nama_promo` varchar(255) DEFAULT NULL,
  `persentase_promo` int(5) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id_promo`, `nama_promo`, `persentase_promo`, `created_at`, `updated_at`) VALUES
(1, 'No Promo', 0, '2021-04-16 02:03:24', '2021-04-16 02:03:24'),
(2, 'Ramadhan', 15, '2021-04-18 07:10:30', '2021-04-18 07:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('adminjuan', 'adminjuan'),
('adminpeter', 'adminpeter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_brand` (`id_brand`),
  ADD KEY `id_promo` (`id_promo`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id_promo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`id_promo`) REFERENCES `promo` (`id_promo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
