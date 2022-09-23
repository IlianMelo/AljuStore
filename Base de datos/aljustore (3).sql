-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 08:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aljustore`
--

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
(2, 'Administrador', 'admin@gmail.com', 'admin123*', 'user-profile-min.png', '3193867792', 'Colombia', 'Front-End Developer', ' Programando... ');

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

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(1, '555', 5, 15);

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
(2, 'Mujer', 'no', 'feminelg.png'),
(3, 'Niños', 'no', 'kidslg.jpg'),
(4, 'Demás', 'yes', 'othericon.png'),
(5, 'Hombre', 'yes', 'malelg.png');

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

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(7, 5, 'ALJUSTORE', '10', 'ALJU ', 1, 1);

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
(13, 'Usuario1Prueba', 'Usuario@gmail.com', '123456', 'Colombia', 'bogotá', '3193867792', 'Trans 13f', 'Consignacion-Bancolombia-Daviplata-Nequi.jpg', '::1', '532475532'),
(14, 'Ilian Melo', 'IlianMelo@gmail.com', 'Contraseña123*', 'Colombia', 'bogotá', '3193867792', 'Trans 13f', '300410642_479864227481466_1622487091367614954_n.png', '::1', '825123528');

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
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(38, 13, 176, 412037349, 2, 'Mediano', '2022-08-01 01:46:11', 'pending'),
(39, 14, 90, 307285578, 1, 'Pequeño', '2022-09-16 05:01:03', 'Complete');

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
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png'),
(9, 'Común', 'no', 'Mi proyecto.png');

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
(29, 1, 300, 'consignación', 1025460, 1025466682, '09/15/2022');

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
(38, 13, 412037349, '15', 2, 'Mediano', 'pending'),
(39, 14, 307285578, '18', 1, 'Pequeño', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
(5, 7, 5, 5, '2022-07-31 21:37:10', 'Chaqueta Denim ', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 200, 150, '\r\n\r\n\r\n\r\n\r\n\r\n\r\nEspectacular chaqueta clasica jean \r\nExcelentes materiales\r\n100% producto colombiano\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nEspectacular chaqueta clasica jean \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nNo hay videos para mostrar\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Chaqueta jean', 'Clasico', 'product'),
(8, 4, 2, 4, '2022-07-31 21:36:37', 'Abrigo Hibrido', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '\r\n\r\n\r\n\r\n\r\n\r\nTenemos para ti una prenda casual favorita para sentirse con comodidad, con una suave y delicada textura, estos abrigos que actualmente son tendencia de la moda casual, lucen colores atractivos que se complementan con su diseño exterior sobrio y elegante.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\nUna prenda casual favorita para sentirse con comodidad\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nNo hay videos para mostrar\r\n\r\n\r\n', 'Abrigo', 'Nuevo', 'product'),
(9, 10, 5, 7, '2022-07-31 21:35:19', 'Camisa Manga Larga', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 35, '\r\n\r\n\r\n\r\n\r\n\r\nMaterial: Algodón y poliéster.\r\nColores: Azul Claro, Blanco.\r\nProducto 100% Colombiano.\r\nGarantía en tela y confección.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nCamisa Manga Larga\r\nBlanca\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\nNo hay videos para mostrar\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Camisa', 'Clasico', 'product'),
(13, 9, 2, 3, '2022-07-31 21:35:57', 'Pantalon Nike sportswear', 'nike-sportswear-essen-col', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 90, 85, '\r\n\r\n\r\nElaborados en 100% Algodón perchado\r\nIdeal para todo tipo de actividades física, o simplemente el día a día.\r\nCuentan con tres bolsillos, dos laterales con cremalleras y uno para billetera.\r\nElástico en la cintura y cordón para mayor ajuste...\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\nPantalon 100% Algodón perchado\r\nIdeal para todo tipo de actividades física, o simplemente el día a día.\r\nElástico en la cintura y cordón para mayor ajuste.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\nNo hay videos para mostrar\r\n\r\n\r\n\r\n\r\n', 'nike sportswear', 'Promo', 'product'),
(15, 5, 5, 8, '2022-07-31 21:38:09', 'Camiseta Polo', 'cotton-polo-shirt', 'g18bulk.jpg', 'g18bulk2.jpg', 'g18bulk3.jpg', 88, 75, '\r\n\r\n\r\nCamiseta polo\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nCamiseta polo excelente calidad\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\nNo hay videos para mostrar\r\n', 'polo shirt', 'Nuevo', 'bundle'),
(17, 10, 3, 9, '2022-09-05 04:14:30', 'Camiseta manga corta', 'c-nino-azul', 'Opera Snapshot_2022-09-04_230901_www.offcorss.com.png', 'Opera Snapshot_2022-09-04_230950_www.offcorss.com.png', 'Opera Snapshot_2022-09-04_230950_www.offcorss.com.png', 85, 75, '\r\n\r\n\r\n\r\n\r\n\r\nCamisa manga corta para bebé niño (2-5 años) \r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\nCamiseta para niño excelente calidad\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\nNo hay videos para mostrar\r\n\r\n\r\n\r\n\r\n', 'Camisa', 'Nuevo', 'product'),
(18, 4, 4, 9, '2022-09-05 04:27:46', 'Hoddie negro unisex', 'hoddie-negro-unisex', 'Opera Snapshot_2022-09-04_232148_articulo.mercadolibre.com.co.png', 'Opera Snapshot_2022-09-04_232108_articulo.mercadolibre.com.co.png', 'Opera Snapshot_2022-09-04_232108_articulo.mercadolibre.com.co.png', 90, 80, '\r\n\r\ncómodos buzos abiertos y con capota. hechos 100% en algodón perchado. producto importado de alta calidad marca gildan. para hombre y mujer', '\r\nHoddie negro unisex excelente calidad\r\n', '\r\nNo hay videos para mostrar\r\n', 'hoddie', 'Nuevo', 'product'),
(19, 5, 4, 2, '2022-09-05 04:31:54', 'Camiseta Adidas', 't-shirt-adidas', 'Opera Snapshot_2022-09-04_232843_articulo.mercadolibre.com.co.png', 'Opera Snapshot_2022-09-04_232852_articulo.mercadolibre.com.co.png', 'Opera Snapshot_2022-09-04_232852_articulo.mercadolibre.com.co.png', 90, 70, '\r\n\r\nLas Camisetas más cool, como las personas más cool, encajan en cualquier lugar sin esfuerzo alguno. Esta Camiseta es perfecta con su tejido de algodón suave y logo adidas Badge of Sport en el pecho', '\r\n\r\nModelo: adidas Badge Of Sport Basic\r\nMaterial exterior: 100 % algodón\r\nCorte clásico\r\nCuello redondo acanalado\r\nTejido de tacto suave\r\nOrigen: Producto Importado\r\nTallaje: Numeración Americana\r\nEstilo: Deportivo\r\nActividad: Training', '\r\n\r\nNo hay videos para mostrar', 'Camisa', 'Clasico', 'product');

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
(4, 'Abrigos', 'no', 'coaticn.png'),
(5, 'Camisetas', 'no', 'tshirticn.png'),
(7, 'Chaquetas', 'yes', 'jacketicn.png'),
(9, 'Pantalones', 'no', 'trousericn.png'),
(10, 'Camisa', '', '');

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
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(8, 13, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
