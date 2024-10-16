-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 07:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medstore2`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `ID` int(20) NOT NULL,
  `about` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`ID`, `about`) VALUES
(1, 'If you have been always looking for medical products online store, you are in the right place. Our store is able to provide you with any type of medical goods weather it is the pills or the first aid kit. You will find everything that is on your demands. Our products are high-quality and have the lowest price around the whole city');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Square'),
(2, 'Beximco Pharma'),
(3, 'SkF+'),
(4, 'ACI'),
(5, 'ACME'),
(6, 'Cardinal Care');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Painkillers'),
(2, 'Cough Fever'),
(3, 'Digestion'),
(4, 'Vitamins'),
(5, 'Medical ');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Tanvir Rahman Anik', 'anik81.art@gmail.com', '14785239', 'Inquery', 'Hello Its an emergency'),
(3, 'Tanvir Rahman', 'safu@gmail.com', '14785239', 'What', 'adsad'),
(5, 'Safiya Ahmed', 'safu@gmail.com', '14785239', 'What', 'adsad'),
(6, 'Safiya Ahmed', 'safu@gmail.com', '14785239', 'What', 'adsad');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `ID` int(11) NOT NULL,
  `developer_name` varchar(200) DEFAULT NULL,
  `developer_Roll` varchar(200) DEFAULT NULL,
  `developer_image` varchar(1000) DEFAULT NULL,
  `facebook` varchar(500) NOT NULL,
  `github` varchar(500) NOT NULL,
  `linkedin` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`ID`, `developer_name`, `developer_Roll`, `developer_image`, `facebook`, `github`, `linkedin`) VALUES
(1, 'Tanvir Rahman Anik', '180104081', 'anik.jpeg', 'https://www.facebook.com/purebloodd.art/', '', ''),
(2, 'Sabrina Mustafij', '180104077', 'mumu.jpg', 'https://www.facebook.com/sherlyn.shreya55', '', ''),
(3, 'Tanvir Rahman Anik', '180104081', 'anik.jpeg', 'https://www.facebook.com/purebloodd.art/', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 3, 2, 'Acifix 20mg', 250, 'Digestive', 'b1.jpg', 'Gastric Tablet'),
(2, 3, 2, 'Bemsivir', 150, 'Digestive', 'b2.jpg', 'Gastric Injection'),
(3, 1, 2, 'Birozan 5/40', 350, 'Painkillers', 'b3.jpg', 'Cardio Vascular'),
(4, 3, 2, 'Pantobex 40', 350, 'Digestive', 'b4.jpg', 'Gastric Tablet'),
(5, 1, 2, 'Napa Extend', 150, 'Painkillers', 'b5.jpg', 'Napa'),
(6, 1, 2, 'Napa', 100, 'Painkillers', 'b6.jpg', 'Napa'),
(7, 1, 1, 'Ace XR', 100, 'Painkillers', 'b7.jpg', 'Ace+'),
(8, 2, 5, 'Thyvy', 100, 'Cough', 'c1.jpg', 'Syrup'),
(9, 2, 1, 'Brofex', 100, 'Cough', 'c2.jpg', 'Syrup'),
(10, 2, 1, 'Ocof', 100, 'Cough', 'c3.jpg', 'Syrup'),
(11, 2, 1, 'Mucospel', 100, 'Cough', 'c4.jpg', 'Syrup'),
(12, 2, 5, 'Dextrim', 100, 'Cough', 'c5.jpg', 'Syrup'),
(13, 2, 1, 'Tusca', 100, 'Cough', 'c6.jpg', 'Syrup'),
(14, 3, 3, 'Pantonix 20', 100, 'Digestive', 'p1.jpg', 'Gastric Tablet'),
(15, 3, 3, 'Pantonix 40', 100, 'Digestive', 'p2.jpg', 'Gastric Tablet'),
(16, 3, 3, 'Pantonix 40', 100, 'Digestive', 'p3.jpg', 'Gastric Injection'),
(17, 4, 4, 'All day Allergy', 100, 'Vitamins', 'product1.jpg', 'Allergy Tablet'),
(18, 5, 3, 'Digital Pressure Machine', 1500, 'Equipments', 'product2.jpg', 'Machine'),
(19, 4, 4, 'Benadryl', 100, 'Vitamins', 'product3.jpg', 'Allergy Tablet'),
(20, 5, 3, 'Medical Bag', 1000, 'Equipments', 'product4.jpg', 'Bag'),
(21, 4, 4, 'Maha Rasandi', 500, 'Vitamins', 'product5.jpg', 'Vitamin Tablet'),
(22, 4, 4, 'All day Allergy', 100, 'Vitamins', 'product6.jpg', 'Allergy Tablet'),
(23, 5, 3, 'Tooth Brush', 100, 'Equipments', 'product7.jpg', 'Brush'),
(24, 1, 3, 'Anacin', 200, 'Painkillers', 'product8.jpg', 'Painkillers'),
(25, 5, 3, 'First Aid Bag', 1000, 'Equipments', 'product10.jpg', 'Bag'),
(26, 5, 3, 'Syringe', 10, 'Equipments', 'product11.jpg', 'Syringe'),
(27, 5, 3, 'Syringe', 10, 'Equipments', 'product12.jpg', 'Syringe'),
(28, 5, 3, 'First Aid Kit', 1000, 'Equipments', 'product13.jpg', 'Bag'),
(29, 1, 4, 'Algin', 200, 'Painkillers', 'r1.jpg', 'Painkillers'),
(30, 1, 4, 'Moov', 200, 'Painkillers', 'r2.jpg', 'Painkillers'),
(31, 3, 4, 'Nipoxen 250', 200, 'Digestive', 'r3.jpg', 'Digestive Tablet'),
(32, 1, 4, 'Volini', 200, 'Painkillers', 'r4.jpg', 'Painkillers'),
(33, 1, 4, 'Zandu Balm', 200, 'Painkillers', 'r5.jpg', 'Painkillers'),
(34, 1, 4, 'Bengay', 200, 'Painkillers', 'r6.jpg', 'Painkillers'),
(35, 1, 4, 'Crocin', 200, 'Painkillers', 'r7.jpg', 'Painkillers'),
(36, 1, 4, 'Fast Relief', 200, 'Painkillers', 'r8.jpg', 'Painkillers'),
(37, 1, 1, 'Trupan 20', 200, 'Painkillers', 's1.jpg', 'Painkillers'),
(38, 3, 1, 'Flexi', 200, 'Digestive', 's2.jpg', 'Digestive Tablet'),
(39, 3, 1, 'Robic', 200, 'Digestive', 's3.jpg', 'Digestive Tablet'),
(40, 1, 1, 'Angilock 100', 200, 'Painkillers', 's4.jpg', 'Painkillers'),
(41, 4, 1, 'Alatrol', 200, 'Vitamins', 's5.jpg', 'Allergy Tablet'),
(42, 1, 1, 'Tryptin 10', 200, 'Painkillers', 's6.jpg', 'Painkillers'),
(43, 5, 1, 'Antazol 0.1%', 12, 'Equipments', 's8.jpg', 'Nasal Drops'),
(44, 5, 1, 'Apsol', 12, 'Equipments', 's9.jpg', 'Cream'),
(45, 3, 1, 'Seclo 40', 200, 'Digestive', 's10.jpg', 'Digestive Tablet'),
(46, 1, 1, 'Clofenac 50', 200, 'Painkillers', 's11.jpg', 'Painkillers'),
(48, 4, 3, 'Ceflon PD', 1000, 'Vitamins', 'sk1.jpg', 'Tablet'),
(49, 4, 3, 'Capcitab 500', 1000, 'Vitamins', 'sk2.jpg', 'Tablet'),
(50, 4, 3, 'Paclitor 30', 1000, 'Vitamins', 'sk3.jpg', 'Tablet'),
(51, 4, 3, 'Milam 15', 1000, 'Vitamins', 'sk4.jpg', 'Tablet'),
(52, 4, 1, 'Aristocal D', 1000, 'Vitamins', 'v1.jpg', 'Tablet'),
(53, 4, 1, 'Aristocal', 1000, 'Vitamins', 'v2.jpg', 'Tablet'),
(54, 4, 5, 'Nautes Aid', 1000, 'Vitamins', 'v6.jpg', 'Tablet'),
(55, 5, 6, 'PulseOxymeter', 1500, 'Equipments', 'car1.jpg', 'Equip'),
(56, 5, 6, 'N-95 Mask', 500, 'Equipments', 'car2.jpg', 'Equip'),
(57, 5, 6, '3-Layer Mask', 400, 'Equipments', 'car3.jpg', 'Equip'),
(58, 5, 6, 'KN-95 Mask', 500, 'Equipments', 'car4.jpg', 'Equip'),
(59, 5, 6, 'Fogger Machine Small', 1500, 'Equipments', 'car5.jpg', 'Equip'),
(60, 5, 6, 'Remover', 1000, 'Equipments', 'car6.jpg', 'Equip'),
(61, 5, 6, 'Face Sprayer', 1500, 'Equipments', 'car7.jpg', 'Equip'),
(62, 5, 6, 'Mask', 500, 'Equipments', 'car8.jpg', 'Equip'),
(63, 5, 6, 'Hand Sprayer', 1500, 'Equipments', 'car11.jpg', 'Equip'),
(64, 5, 6, 'Hand Sanitizer', 100, 'Equipments', 'car10.jpg', 'Equip');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`, `image`) VALUES
(26, 'Tanvir Rahman ', 'Anik', 'anik81.art@gmail.com', 'anik123456', '1234567890', 'Motijheel ', 'Dhaka', 'anik.jpeg'),
(27, 'Safiya ', 'Ahmed', 'safiya@gmail.com', 'safu12345', '1234567890', 'Siddeshwari', 'Dhaka', ''),
(28, 'Sabrina Mustafij', 'Mumu', 'mumu11@gmai.com', '123456789', '0123456789', 'asdrasfd', 'adad', 'mumu.jpg'),
(29, 'Safiya ', 'Ahmed', 'safu@gmail.com', 'safu12345', '0123456789', 'Siddeshwari', 'Dhaka', 'safu.jpg'),
(30, 'Hasibul ', 'Haque', 'hasib@gmail.com', 'hasib1234', '0123456789', 'Rampura', 'Dhaka', ''),
(31, 'Sumaiya ', 'Ahmed', 'sumaiya@gmail.com', 'sumaiya123', '0123456789', 'Siddeshwari', 'Dhaka', '');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
