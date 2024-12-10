-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 07:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `PHARMACY_NAME` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `CONTACT_NUMBER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`USERNAME`, `PASSWORD`, `PHARMACY_NAME`, `ADDRESS`, `EMAIL`, `CONTACT_NUMBER`) VALUES
('admin', 'admin123', 'Dolo Phamacy', 'Noyabazar, Chittagong', 'dolo@gmail.com', 1600373716);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DOCTOR_NAME` varchar(20) NOT NULL,
  `DOCTOR_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `NAME`, `CONTACT_NUMBER`, `ADDRESS`, `DOCTOR_NAME`, `DOCTOR_ADDRESS`) VALUES
(4, 'Kiran Suthar', '1234567690', 'Andheri East', 'Anshari', 'Andheri East'),
(6, 'Aditya', '7365687269', 'Virar West', 'Xyz', 'Virar West'),
(11, 'Shivam Tiwari', '6862369896', 'Dadar West', 'Dr Kapoor', 'Dadar East'),
(13, 'Varsha Suthar', '7622369694', 'Rani Station', 'Dr Ramesh', 'Rani Station'),
(14, 'Prakash Bhattarai', '9802851472', 'Pokhara-16, Dhikidada', 'Hari Bahadur', 'Matepani-12'),
(15, 'Navila', '1234567893', 'Oluuuuuuuu Kochuuuuuuuu', 'Doctor Name', 'Agrabadddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `INVOICE_ID` int(11) NOT NULL,
  `NET_TOTAL` double NOT NULL DEFAULT 0,
  `INVOICE_DATE` date NOT NULL DEFAULT current_timestamp(),
  `CUSTOMER_ID` int(11) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `TOTAL_DISCOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`INVOICE_ID`, `NET_TOTAL`, `INVOICE_DATE`, `CUSTOMER_ID`, `TOTAL_AMOUNT`, `TOTAL_DISCOUNT`) VALUES
(1, 30, '2021-10-19', 14, 30, 0),
(2, 2626, '2021-10-19', 6, 2626, 0),
(3, 24, '2024-12-10', 4, 24, 0),
(4, 46, '2024-12-10', 4, 46, 0),
(5, 17, '2024-12-10', 6, 17, 0),
(7, 24, '2024-12-10', 15, 24, 0),
(8, 34, '2024-12-10', 15, 34, 0),
(9, 36, '2024-12-10', 15, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PACKING` varchar(20) NOT NULL,
  `GENERIC_NAME` varchar(100) NOT NULL,
  `SUPPLIER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID`, `NAME`, `PACKING`, `GENERIC_NAME`, `SUPPLIER_NAME`) VALUES
(1, 'Nicip Plus', '10TAB', 'Paracetamole', 'BDPL PHARMA'),
(2, 'Crosin', '10tab', 'Hdsgvkvajkcbja', 'Kiran Pharma'),
(4, 'Dolo 650', '15tab', 'paracetamole', 'BDPL PHARMA'),
(5, 'Gelusil', '10tab', 'mint fla', 'Desai Pharma'),
(6, 'Napa', '10TAB', 'Pain', 'Kiran Pharma'),
(7, 'Napa 2', '10TAB', 'Pain', 'Fndn'),
(8, 'Crosin 1', '10', 'Pain', 'Kiran Pharma'),
(9, 'Osrtil 25', '5', 'Pressure', 'Kiran Pharma'),
(11, 'Flexo', '10', 'Pain', 'SS Distributors'),
(12, 'Ttk', '12', 'Pain', 'BDPL PHARMA');

-- --------------------------------------------------------

--
-- Table structure for table `medicines_stock`
--

CREATE TABLE `medicines_stock` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `BATCH_ID` varchar(20) NOT NULL,
  `EXPIRY_DATE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL,
  `INVOICE_NUMBER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `medicines_stock`
--

INSERT INTO `medicines_stock` (`ID`, `NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `RATE`, `INVOICE_NUMBER`) VALUES
(1, 'Crosin', 'CROS12', '12/34', 2, 2626, 26, ''),
(2, 'Gelusil', 'G327', '12/42', 0, 15, 12, ''),
(3, 'Dolo 650', 'DOLO327', '01/23', 3, 30, 24, ''),
(4, 'Nicip Plus', 'NI325', '05/22', 3, 32.65, 28, ''),
(5, 'Flexo', '33', '12/27', 8, 12, 11, '122'),
(6, 'Ttk', '11', '11/27', 5, 17, 15, '112');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `SUPPLIER_NAME` varchar(100) NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `VOUCHER_NUMBER` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(10) NOT NULL,
  `TOTAL_AMOUNT` double NOT NULL,
  `PAYMENT_STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`SUPPLIER_NAME`, `INVOICE_NUMBER`, `VOUCHER_NUMBER`, `PURCHASE_DATE`, `TOTAL_AMOUNT`, `PAYMENT_STATUS`) VALUES
('Fndn', 12377, 1, '2024-12-10', 50, 'PAID'),
('Kiran Pharma', 667, 2, '2024-12-10', 216, 'PAID'),
('SS Distributors', 122, 4, '2024-12-10', 132, 'PAID'),
('BDPL PHARMA', 112, 5, '2024-12-10', 150, 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `INVOICE_NUMBER` int(11) NOT NULL,
  `MEDICINE_NAME` varchar(255) NOT NULL,
  `BATCH_ID` varchar(50) DEFAULT NULL,
  `EXPIRY_DATE` date DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `MRP` decimal(10,2) NOT NULL,
  `DISCOUNT` decimal(5,2) DEFAULT NULL,
  `TOTAL` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`ID`, `CUSTOMER_ID`, `INVOICE_NUMBER`, `MEDICINE_NAME`, `BATCH_ID`, `EXPIRY_DATE`, `QUANTITY`, `MRP`, `DISCOUNT`, `TOTAL`) VALUES
(1, 15, 9, 'Flexo', '33', '0000-00-00', 3, 12.00, 0.00, 36.00);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `NAME`, `EMAIL`, `CONTACT_NUMBER`, `ADDRESS`) VALUES
(1, 'Desai Pharma', 'desai@gmail.com', '9948724242', 'Mahim East'),
(2, 'BDPL PHARMA', 'bdpl@gmail.com', '8645632963', 'Santacruz West'),
(9, 'Kiran Pharma', 'kiranpharma@gmail.com', '7638683637', 'Andheri East'),
(10, 'Rsrnrnrndnn', 'ydj', '3737355538', '3fndfndfndndfnfdndfn'),
(11, 'Dfnsfndfndf', 'fnsn', '5475734385', 'Ndnss4yrhrhdhrdhrh'),
(12, 'SS Distributors', 'ssdis@gamil.com', '3867868752', 'Matunga West'),
(13, 'Avceve', 'ehh', '3466626226', 'Eteh266266262'),
(14, 'Hrshrhrjher', 'dzgdg', '4636347335', 'Rhrswjrnswjn'),
(15, 'Hmrxfmgtmt', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(20, 'Dtdxtkmtdshrrhhsrjrs', 'trmtrm gm tr', '6553838835', '38ejtdjtdxetjdt'),
(23, 'Fndn', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(24, 'Fndnbrwh', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(25, 'Jnentjrtj', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(26, 'Jerthjrtjtjr', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(28, 'Gahgkakbvkv', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns'),
(29, 'Hywhwhrhdw', 'nena ena', '3462462642', 'Ebsbsdbsdndsnsdfns');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`INVOICE_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `BATCH_ID` (`BATCH_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`VOUCHER_NUMBER`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `INVOICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `medicines_stock`
--
ALTER TABLE `medicines_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `VOUCHER_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
