-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2024 at 07:17 AM
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
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_Id` int(11) NOT NULL,
  `Employee_Name` varchar(100) NOT NULL,
  `Employee_Tel` varchar(100) NOT NULL,
  `Role_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_Id`, `Employee_Name`, `Employee_Tel`, `Role_Id`) VALUES
(1, 'อเนก สากุล', '0901256398', 1),
(2, 'สมเกียรติ นากเอี่ยม', '0991232435', 2),
(3, 'สิน เสมทนง', '0883452454', 3),
(4, 'ประภาท สุขกิจ', '0833446745', 4),
(5, 'อาวรณ์ นวลจันทร์', '0853689341', 4);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_Id` int(11) NOT NULL,
  `Member_Name` varchar(100) NOT NULL,
  `Members_Tel` varchar(100) NOT NULL,
  `Member_Point` int(11) NOT NULL,
  `Member_PointUse` int(11) NOT NULL,
  `Member_PointAdd` int(11) NOT NULL,
  `Member_Since` date NOT NULL,
  `Member_Status` varchar(100) NOT NULL,
  `Member_Period` varchar(100) NOT NULL,
  `Member_Address` varchar(100) NOT NULL,
  `Member_Subdistrict` varchar(100) NOT NULL,
  `Member_Dustrict` varchar(100) NOT NULL,
  `Member_Province` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_Id`, `Member_Name`, `Members_Tel`, `Member_Point`, `Member_PointUse`, `Member_PointAdd`, `Member_Since`, `Member_Status`, `Member_Period`, `Member_Address`, `Member_Subdistrict`, `Member_Dustrict`, `Member_Province`) VALUES
(1, 'สมชาย กรวิชญ์พงศา', '0999986740', 100, 0, 100, '2565-03-01', 'TRUE', '', '53 ม.5', 'บึงนาราง', 'บึงนาราง', 'พิจิตร'),
(2, 'รุจิรา คณพัฒน์พงศา', '0684952317', 90, 0, 90, '2565-03-02', 'TRUE', '', '80 ม.3', 'โพทะเล', 'โพทะเล', 'พิจิตร'),
(3, 'สุรชัย ก่อกุลสุทธิเลิศ', '0953812476', 80, 0, 80, '2565-03-03', 'TRUE', '', '44 ม.5', 'สำนักขุนเณร', 'ดงเจริญ', 'พิจิตร'),
(4, 'วิไล ตั้งธีระนพคุณ', '0894765213', 70, 0, 70, '2565-03-04', 'TRUE', '', '21 ม.4', 'บึงบัว', 'วชิรบารมี', 'พิจิตร'),
(5, 'ประสิทธิ์ ก่อเกียรติเกริก', '0912543768', 60, 0, 60, '2565-03-05', 'TRUE', '', '68 ม.1', 'วังสำโรง', 'บางมูลนาก', 'พิจิตร'),
(6, 'as', '015-978-5555', 0, 0, 0, '2024-02-07', '', '', '124', 'as', 'sa', 'sa'),
(7, 'ti', '012-345-6789', 0, 0, 0, '2024-02-13', '', '', '123', 'tit', 'su', 'pit'),
(8, 'เติ้ล เดดพุ', '012-345-6789', 0, 0, 0, '2024-02-13', '', '', '123', 'tit', 'su', 'pit');

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `OrderProduct_Id` int(11) NOT NULL,
  `OrderProduct_Date` date NOT NULL,
  `Member_Id` int(11) NOT NULL,
  `ServiceProduct_Id` int(11) NOT NULL,
  `Kg_Product1` double NOT NULL,
  `Kg_Product2` double NOT NULL,
  `Kg_Product3` double NOT NULL,
  `Kg_Product4` double NOT NULL,
  `Total_Product` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`OrderProduct_Id`, `OrderProduct_Date`, `Member_Id`, `ServiceProduct_Id`, `Kg_Product1`, `Kg_Product2`, `Kg_Product3`, `Kg_Product4`, `Total_Product`) VALUES
(35, '2024-02-11', 0, 0, 14, 14, 14, 14, 434),
(36, '2024-02-11', 0, 0, 0, 4, 0, 0, 32),
(37, '2024-02-11', 0, 0, 20, 0, 0, 0, 160),
(38, '2024-02-11', 0, 0, 20, 0, 0, 3, 190),
(39, '2024-02-13', 0, 0, 13, 4, 1, 1, 151),
(40, '2024-02-17', 2, 0, 125, 1, 1, 1, 1023),
(41, '2024-02-17', 5, 0, 753, 145, 10, 0, 7234);

-- --------------------------------------------------------

--
-- Table structure for table `orderservice`
--

CREATE TABLE `orderservice` (
  `OrderService_Id` int(11) NOT NULL,
  `OrderServicet_Date` date NOT NULL,
  `Member_Id` int(11) NOT NULL,
  `ServiceProduct_Id` varchar(999) NOT NULL,
  `Bucket_Service` double NOT NULL,
  `Total_Service` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderservice`
--

INSERT INTO `orderservice` (`OrderService_Id`, `OrderServicet_Date`, `Member_Id`, `ServiceProduct_Id`, `Bucket_Service`, `Total_Service`) VALUES
(98, '2024-02-16', 0, 'คัด/ฝัดเมล็ดข้าว และ อบข้าว', 15, 195),
(99, '2024-02-16', 0, 'คัด/ฝัดเมล็ดข้าว และ อบข้าว', 15, 195),
(100, '2024-02-16', 0, 'คัด/ฝัดเมล็ดข้าว และ อบข้าว', 15, 195),
(101, '2024-02-16', 0, 'สีข้าว', 14, 0),
(102, '2024-02-16', 0, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว และ อบข้าว', 75, 975),
(103, '2024-02-16', 0, 'สีข้าว และ อบข้าว', 75, 0),
(104, '2024-02-16', 0, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว และ อบข้าว', 25, 325),
(105, '2024-02-16', 4, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว', 25, 75),
(106, '2024-02-16', 0, 'คัด/ฝัดเมล็ดข้าว', 85, 255),
(107, '2024-02-17', 2, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว', 14, 42),
(108, '2024-02-17', 5, 'สีข้าว', 1235, 0),
(109, '2024-02-17', 3, 'คัด/ฝัดเมล็ดข้าว', 15, 45),
(110, '2024-02-17', 4, 'สีข้าว และ อบข้าว', 12, 0),
(111, '2024-02-17', 8, 'คัด/ฝัดเมล็ดข้าว และ อบข้าว', 14, 182),
(112, '2024-02-17', 4, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว', 123, 369),
(113, '2024-02-17', 0, 'อบข้าว', 75, 750),
(114, '2024-02-17', 0, 'อบข้าว', 75, 750),
(115, '2024-02-17', 4, 'คัด/ฝัดเมล็ดข้าว', 74, 222),
(116, '2024-02-17', 3, 'อบข้าว', 12, 120),
(117, '2024-02-17', 4, 'อบข้าว', 74, 740);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `Promotiom_Id` int(11) NOT NULL,
  `Promotion_name` varchar(100) NOT NULL,
  `Promotion_Point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`Promotiom_Id`, `Promotion_name`, `Promotion_Point`) VALUES
(1, 'สะสมครบ 1,000 แต้ม มีสิทธิใช้บริการอบข้าว 1 ครั้ง', 1000),
(2, 'สะสมครบ 3,000 แต้ม มีสิทธิ์เลือกใช้บริการได้ 1 อย่างฟรี/1ครั้ง', 3000),
(3, 'สะสมครบ 500 แต้ม มีสิทธิ์ใช้บริการคัด/ฝัดข้าว 1 ครั้ง', 500);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `Receipt_Id` int(11) NOT NULL,
  `Receipt_Date` date NOT NULL,
  `Receipt_Total` int(11) NOT NULL,
  `Member_Id` int(11) NOT NULL,
  `Order_Id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Receipt_Quantity` int(11) NOT NULL,
  `ServiceProduct_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`Receipt_Id`, `Receipt_Date`, `Receipt_Total`, `Member_Id`, `Order_Id`, `Employee_Id`, `Receipt_Quantity`, `ServiceProduct_Id`) VALUES
(1, '2024-02-01', 100, 1, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Role_Id` int(11) NOT NULL,
  `Role_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Role_Id`, `Role_Name`) VALUES
(1, 'เจ้าของโรงสี'),
(2, 'ผู้จัดการ'),
(3, 'พนักงานขาย'),
(4, 'พนักงานบริการ');

-- --------------------------------------------------------

--
-- Table structure for table `serviceandproduct`
--

CREATE TABLE `serviceandproduct` (
  `ServiceProduct_Id` int(11) NOT NULL,
  `ServiceProduct_Name` varchar(100) NOT NULL,
  `ServiceProduct_Price` int(11) NOT NULL,
  `ServiceProduct_Point` int(11) NOT NULL,
  `Type_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `serviceandproduct`
--

INSERT INTO `serviceandproduct` (`ServiceProduct_Id`, `ServiceProduct_Name`, `ServiceProduct_Price`, `ServiceProduct_Point`, `Type_Id`) VALUES
(1, 'สีข้าว', 0, 1, 1),
(2, 'คัด/ฝัดเมล็ดข้าว', 3, 2, 1),
(3, 'อบข้าว', 10, 3, 1),
(4, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว', 3, 2, 1),
(5, 'สีข้าว และ อบข้าว', 10, 3, 1),
(6, 'คัด/ฝัดเมล็ดข้าว และ อบข้าว', 13, 5, 1),
(7, 'สีข้าว และ คัด/ฝัดเมล็ดข้าว และ อบข้าว', 13, 5, 1),
(8, 'รำข้าว', 8, 2, 2),
(9, 'แกลบ', 8, 2, 2),
(10, 'ข้าวท่อน', 5, 1, 2),
(11, 'ข้าวปลาย', 10, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `totalorder`
--

CREATE TABLE `totalorder` (
  `Totalorder_Id` int(11) NOT NULL,
  `OrderProduct_Id` int(11) NOT NULL,
  `OrderService_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `totalorder`
--

INSERT INTO `totalorder` (`Totalorder_Id`, `OrderProduct_Id`, `OrderService_Id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type_Id` int(11) NOT NULL,
  `Type_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Type_Id`, `Type_Name`) VALUES
(1, 'บริการ'),
(2, 'สินค้า');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_Id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Member_Id`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`OrderProduct_Id`);

--
-- Indexes for table `orderservice`
--
ALTER TABLE `orderservice`
  ADD PRIMARY KEY (`OrderService_Id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`Promotiom_Id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`Receipt_Id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `serviceandproduct`
--
ALTER TABLE `serviceandproduct`
  ADD PRIMARY KEY (`ServiceProduct_Id`);

--
-- Indexes for table `totalorder`
--
ALTER TABLE `totalorder`
  ADD PRIMARY KEY (`Totalorder_Id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Type_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `OrderProduct_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orderservice`
--
ALTER TABLE `orderservice`
  MODIFY `OrderService_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `Promotiom_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `Receipt_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `serviceandproduct`
--
ALTER TABLE `serviceandproduct`
  MODIFY `ServiceProduct_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `totalorder`
--
ALTER TABLE `totalorder`
  MODIFY `Totalorder_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `Type_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
