-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 03:27 PM
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
-- Database: `e_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(100) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(5, 'Rudra Kamal Debnath', 'rudrakamal2020@gmail.com', '12345', 'Screenshot 2024-05-19 230154.png', '9903956309', 'India', 'WEB DEVELOPER', 'value=\"value=\"value=\"I AM RUDDRA KAMAL DEBNATH\" >\" >\" >'),
(6, 'Shirsendu Deb', 'shirsendudeb003@gmail.com', '12345', 'MY PIC.jpg', '8583844187', 'India', 'Junior Web Developer', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(7, 'SALOON PRODUCTS', 'All Saloon products'),
(8, 'PARLOR PRODUCTS', 'parlor'),
(9, 'GARMENTS', ''),
(10, 'DAILY-USE', ''),
(11, 'OTHERS', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(29, 'Shirsendu Deb', 'shirsendudeb003@gmail.com', 'Shirsendu@2010', 'India', 'Howrah', '8583844187', '38, Baikuntha Chatterjee Lane, Howrah', 'MY PIC.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(100) NOT NULL,
  `invoice_id` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(100) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_id`, `amount`, `payment_mode`, `ref_no`, `payment_date`) VALUES
(18, 236385455, 342, 'Paytm', 232323, '2021-05-18'),
(20, 1601455995, 599, 'google pay', 232323, '2021-05-11'),
(21, 1601455995, 599, 'Bank transfer', 112121, '2021-05-10'),
(22, 2098939645, 299, 'Bank transfer', 232323, '2021-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keyword`) VALUES
(40, 65, 0, '2024-05-21 16:40:50', 'Banarasi Silk Sarees', 'silk_sar1.2.jpg', 'silk_sar1.1.jpg', 'silk_sar1.3.jpg', 399, 'Name : NEW TRADITIONAL SAREE FOR WOMEN\r\n\r\nSaree Fabric : Banarasi Silk\r\n\r\nBlouse : Running Blouse\r\n\r\nBlouse Fabric : Banarasi Silk\r\n\r\nPattern : Zari Woven\r\n\r\nBlouse Pattern : Same as Border\r\n\r\nNet Quantity (N) : Single\r\n\r\nSizes :  \r\n\r\nFree Size (Saree Length Size : 5.5 m, Blouse Length Size: 0.8 m)', ''),
(41, 65, 0, '2024-05-21 17:54:18', 'MEKHELA SILK SARESS', '2qidi_512.png', 'bifhi_512.png', 'cd4ti_512.png', 675, 'Saree Fabric : Soft Silk\r\n\r\nBlouse : Separate Blouse Piece\r\n\r\nBlouse Fabric : Soft Silk\r\n\r\nPattern : Woven Design\r\n\r\nBlouse Pattern : Woven Design\r\n\r\nNet Quantity (N) : Single\r\nSizes :  \r\n\r\nFree Size (Saree Length Size : 5.5 m, Blouse Length Size: 0.8 m)', 'SILK, SAREES'),
(42, 67, 0, '2024-05-21 18:07:26', 'Myra Drishya Cotton Sarees', 'tfzqq_512.png', '7qay8_512.png', 'nqr8p_512.png', 529, 'Saree Fabric : Cotton\r\n\r\nBlouse : Separate Blouse Piece\r\n\r\nBlouse Fabric : Cotton\r\n\r\nPattern : Woven Design\r\n\r\nBlouse Pattern : Same as Saree\r\n\r\nNet Quantity (N) : Single\r\n\r\nCotton Silk Art Silk Saree, Cotton Silk Art Silk Unstitched Blouse Piece, 5.5 Meters Saree Length, 0.80 Meters Blouse Piece Length, Party And Festive Wear Saree\r\n\r\nSizes :  \r\n\r\nFree Size', ''),
(43, 67, 0, '2024-05-22 06:22:23', 'SIRIL Cotton Saree', '81gCSyzlTEL._SX679_.jpg', '81v+dk1sxoL._SX679_.jpg', '71JJopqzGIL._SX679_.jpg', 469, 'Saree Fabric: Poly Cotton | Blouse Fabric: Poly Cotton | Work:: Saree: Printed | Blouse: Printed, Self Woven, Gold Zari Border, Zari Stripe\r\nLength:: Saree: 5.50Mtr | Blouse: 0.80Mtr, Which Need To Be Stitched As Per Size And Fit | Package Content : 1 Saree With 1 Unstitched Blouses Piece\r\nColour:: Saree Color: Turquoise | Blouse Color: Turquoise, White', ''),
(44, 68, 0, '2024-05-22 06:38:37', 'Pink & White Ombre Pure Chiffon Saree', '006cafb1-2d9f-48b6-aef6-c9a754fac5ce1691426303787MiteraPinkWhiteOmbrePureChiffonSaree1.jpg', '1c187262-dd79-4601-ac3e-2272b9e5aaa51691426303816MiteraPinkWhiteOmbrePureChiffonSaree2.jpg', '18843c0f-4df5-4576-baf9-a3f0af72d1dc1691426303845MiteraPinkWhiteOmbrePureChiffonSaree3.jpg', 899, 'Design Details\r\nPink and white saree\r\nOmbre solid saree with embellished border border\r\n\r\nThe saree comes with an unstitched blouse piece\r\n\r\nThe blouse worn by the model might be for modelling purpose only. Check the image of the blouse piece to understand how the actual blouse piece looks like.\r\n\r\nSize & Fit\r\nLength: 5.5 metres plus 0.8 metre blouse piece\r\nWidth: 1.06 metres (approx.)', ''),
(45, 68, 0, '2024-05-22 07:22:19', 'Leheriya Pure Chiffon Saree', '390e39a3-4f52-42ac-9a41-e60f652673b71712229985367-BAPS-Leheriya-Pure-Chiffon-Saree-8001712229984535-1.jpg', '87eeaa14-c5c8-4855-a98c-53370c7e9e511712229985340-BAPS-Leheriya-Pure-Chiffon-Saree-8001712229984535-2.jpg', 'fed660cd-f77e-4e95-af5b-8a8d0c91f4fe1712229985313-BAPS-Leheriya-Pure-Chiffon-Saree-8001712229984535-3.jpg', 1319, 'Design Details\r\nBlue and green saree\r\nLeheriya striped saree with woven design border\r\n\r\nThe saree comes with an unstitched blouse piece\r\nThe blouse worn by the model might be for modelling purpose only. Check the image of the blouse piece to understand how the actual blouse piece looks like.\r\n\r\nSize & Fit\r\nLength: 5.5 metres plus 0.8 metre blouse piece\r\nWidth: 1.06 metres (approx.)', 'ciffon'),
(46, 69, 0, '2024-05-22 06:48:52', 'White & Red Pure Cotton Jamdani Saree', '38690cd7-0a13-48dc-9087-c5694d6e4efe1669025216827-DESH-BIDESH-White--Red-Woven-Design-Zardozi-Pure-Cotton-Jamd-1.jpg', 'dd1d3ff7-d092-402a-a8f4-34e90412ed241669025216805-DESH-BIDESH-White--Red-Woven-Design-Zardozi-Pure-Cotton-Jamd-2.jpg', '64e90ddd-c837-4474-a96a-fd88c43409631669025216780-DESH-BIDESH-White--Red-Woven-Design-Zardozi-Pure-Cotton-Jamd-3.jpg', 1840, 'Design Details\r\nWhite and red jamdani saree\r\nGeometric printed saree with printed border\r\n\r\nThe saree does not come with a blouse piece\r\nThe model is wearing a blouse for modelling purpose only\r\n\r\nSize & Fit\r\nLength: 5.5 metres plus 0.8 metre blouse piece\r\nWidth: 1.06 metres (approx.)', ''),
(47, 69, 0, '2024-05-22 07:11:58', 'Blue & Red Colourblocked Half and Half Jamdani Sareei Saree', '393dfe8f-822a-49b1-b057-4b32d49b8b2e1653681634045IndethnicBlueRedColourblockedHalfandHalfJamdaniSaree2.jpg', 'df5cb77e-6f38-4c4b-b4aa-b58c7605a2531653681634080IndethnicBlueRedColourblockedHalfandHalfJamdaniSaree4.jpg', '1ce343c6-96c4-441c-9126-e53211c3bb961653681634067IndethnicBlueRedColourblockedHalfandHalfJamdaniSaree3.jpg', 1249, 'Design Details\r\nBlue and red jamdani saree\r\nColourblocked saree with solid border\r\n\r\nThe saree comes with an unstitched blouse piece\r\nThe blouse worn by the model might be for modelling purpose only. Check the image of the blouse piece to understand how the actual blouse piece looks like.\r\n\r\nSize & Fit\r\nLength: 5.5 metres plus 0.8 metre blouse piece\r\nWidth: 1.06 metres (approx.)', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL,
  `p_cat_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`p_cat_id`, `p_cat_title`, `p_cat_desc`, `p_cat_img`) VALUES
(65, 'SILK SAREES', '', 0),
(66, 'TANT SAREES', '', 0),
(67, 'COTTON SAREES', '', 0),
(68, 'CHIFFON SAREES', '', 0),
(69, 'JAMDANI SAREES', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `Id` int(10) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` text NOT NULL,
  `slider_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`Id`, `slider_name`, `slider_image`, `slider_url`) VALUES
(25, 'Welcome', 'Untitled design (9).png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
