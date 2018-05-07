-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2018 at 04:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Accesories'),
(2, 'Women\'s Wear'),
(3, 'Men\'s Wear');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'Apeng', 'Silang, Cavite', '09092735719');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(26, 1, 'Update Quantity', 4, 100, '2018-05-01 19:01:59'),
(27, 1, 'Update Quantity', 14, 100, '2018-05-01 19:03:29'),
(28, 1, 'Update Quantity', 9, 100, '2018-05-01 19:05:41'),
(29, 1, 'Add Product', 28, 50, '2018-05-01 19:07:09'),
(31, 2, 'Purchase', 4, 3, '2018-05-02 16:03:27'),
(32, 2, 'Purchase', 8, 2, '2018-05-02 16:08:35'),
(33, 2, 'Purchase', 4, 1, '2018-05-04 11:26:06'),
(34, 2, 'Purchase', 5, 1, '2018-05-04 11:26:06'),
(35, 2, 'Purchase', 15, 2, '2018-05-04 11:26:06'),
(36, 2, 'Purchase', 4, 1, '2018-05-04 11:58:23'),
(37, 1, 'Add Product', 29, 100, '2018-05-04 12:10:07'),
(38, 1, 'Add Product', 30, 100, '2018-05-04 12:11:31'),
(39, 2, 'Purchase', 16, 1, '2018-05-04 12:31:16'),
(40, 2, 'Purchase', 6, 1, '2018-05-04 12:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(1, 2, 'DENIM SKIRT', 50, 40, 'upload/1_1525173400.jpg', 4),
(2, 2, 'SPORTS WEAR JACKET', 150, 100, 'upload/2_1525172364.jpg', 0),
(4, 3, 'POLO SHIRT', 50, 95, 'upload/4_1525172519.jpg', 0),
(5, 2, 'Two Piece Shirt + Dress For Children', 250, 99, 'upload/5_1525171655.jpg', 0),
(6, 2, 'DENIM JACKET', 160, 99, 'upload/6_1525172039.jpg', 0),
(8, 1, 'GOLD INITIAL NECKLACE', 60, 48, 'upload/7_1525171858.jpg', 0),
(9, 3, 'CARGO SHORTS', 100, 100, 'upload/10_1525172741.jpg', 0),
(11, 1, 'GOLDEN RING', 70, 10, 'upload/3_1525172406.jpg', 0),
(12, 2, 'Training Jacket', 160, 100, 'upload/12_1525172207.jpg', 0),
(13, 2, 'JUMPER SKIRT', 140, 100, 'upload/13_1525172461.jpg', 0),
(14, 2, 'JUMPSUIT', 160, 100, 'upload/14_1525172609.jpg', 0),
(15, 2, 'DENIM PANTS', 200, 98, 'upload/15_1525168758.jpg', 0),
(16, 2, 'SKINNY JEANS', 140, 99, 'upload/9_1525172006.jpg', 0),
(17, 2, 'LONG SLEEVES BLOUSE', 100, 1000, 'upload/17_1525168892.jpg', 0),
(18, 2, 'DRESS', 120, 100, 'upload/18_1525169091.jpg', 0),
(19, 2, 'ROMPER', 110, 100, 'upload/19_1525170372.jpg', 0),
(20, 2, 'LONG SLEEVES SHIRT', 70, 100, 'upload/20_1525171297.jpg', 0),
(21, 3, 'Sports Shirt', 60, 100, 'upload/21_1525171036.png', 0),
(22, 2, 'Skirt', 50, 100, 'upload/22_1525170983.jpg', 0),
(28, 3, 'JUMPER PANTS FOR MEN', 180, 50, 'upload/11_1525172829.jpg', 4),
(30, 2, 'jeans', 150, 100, 'upload/1452_1525407091.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 150, '2018-05-02 16:03:27'),
(2, 2, 120, '2018-05-02 16:08:35'),
(3, 2, 700, '2018-05-04 11:26:05'),
(4, 2, 50, '2018-05-04 11:58:22'),
(5, 2, 300, '2018-05-04 12:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 1, 4, 3),
(2, 2, 8, 2),
(3, 3, 4, 1),
(4, 3, 5, 1),
(5, 3, 15, 2),
(6, 4, 4, 1),
(7, 5, 16, 1),
(8, 5, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(4, 'Keys Enterprise', 'New Manila, Quezon City', '0905 449 6234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(4, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
