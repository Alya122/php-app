-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 09:58 PM
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
-- Database: `mobile_phones`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite_products_users`
--

CREATE TABLE `favorite_products_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Apple Iphone 14', 'Състояние: Много добро. Цвят: Midnight, 128GB\r\nЕстетично: Изглежда много добре. Има няколко видими драскотини или черти, но не твърде дълбоки. Функционира перфектно.', 899.00, '1734122097_czcs_iphone14_q422_midnight_pdp_image_position-1a_t_1_11.jpg'),
(2, 'Samsung Galaxy Z Flip5', 'Състояние: Като нов. Цвят: Mint 256GB. Естетично: Изглежда като нов или почти нов. Може да има много фини, незабележими драскотини.', 1140.00, '1734122263_galaxy-z-flip5-highlights-colors-mint-mo.jpg'),
(3, 'Apple Iphone 15', 'Състояние: Като нов. Цвят: black 128GB. Естетично: Изглежда като нов или почти нов. Може да има много фини, незабележими драскотини.', 1250.00, '1734122311_res_44ffbf30efb9dcbd1501e316af596edb.avif'),
(4, 'Xiaomi 12 Pro Dual Sim', 'Състояние: Много добро. Цвят: gray 256GB. Естетично: Изглежда много добре. Има няколко видими драскотини или черти, но не твърде дълбоки.', 680.00, '1734122951_res_e1aec1b0fdda21174b4420167c920291.avif'),
(5, 'Samsung Galaxy S21 FE 5G Dual Sim', 'Състояние: Много добро. Цвят: graphite 128GB, . Естетично: Изглежда много добре. Има няколко видими драскотини или черти, но не твърде дълбоки.', 440.00, '1734123078_res_27e676930cd68d27731ddf66897b2e57.jpg'),
(6, 'iPhone 8', 'Състояние: Като нов. Цвят: Space Grey 64 GB. Естетично: Изглежда като нов или почти нов. Може да има много фини, незабележими драскотини.', 260.00, '1734123166_res_e37617b9c43b5f108780d76f7f13485a.avif'),
(7, 'iPhone 15 Pro Max', 'Състояние: Като нов. Цвят: Natural Titanium 256GB. Естетично: Изглежда като нов или почти нов. Може да има много фини, незабележими драскотини.', 1900.00, '1734123265_iphone_15_pro_max_natural_titanium_pdp_image_position-1__en-us_1_1.jpg'),
(8, 'Samsung Galaxy XCover Pro', 'Състояние: Като нов. Цвят: Black 64GB. Естетично: Изглежда като нов или почти нов. Може да има много фини, незабележими драскотини.', 500.00, '1734123350_640x.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, '', '$argon2i$v=19$m=65536,t=4,p=1$eGpjUERjTVFPaEtMNTFWQg$KgjwiG1YzYZsGDZXn29hcVDxgRDyp7GCB24wj3fxwfs'),
(2, 'alexandra', '$argon2i$v=19$m=65536,t=4,p=1$LjZQWVRsbTV0SlJYb21nUw$+jY7B1EMlbvkTz/i4LCEOGMH7pvOFeLY9CEWwyI6Fo8'),
(3, 'ivan', '$argon2i$v=19$m=65536,t=4,p=1$b0ZISWtuL3dXVWZYbzNSUg$rjJadw5WT8q0WX7Td1E5mMdtkIHIOLcJ3Bi2Fp7SEmo'),
(4, 'miroslav', '$argon2i$v=19$m=65536,t=4,p=1$SUlObU82aXZXL0JORjd1Nw$I1Yq4+3c/2X58BsqK895e2/kzbYFvTRzqWjwL8A50L0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite_products_users`
--
ALTER TABLE `favorite_products_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorite_products_users`
--
ALTER TABLE `favorite_products_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite_products_users`
--
ALTER TABLE `favorite_products_users`
  ADD CONSTRAINT `favorite_products_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorite_products_users_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
