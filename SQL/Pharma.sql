-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 10:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Pharma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(4, 'admin@gmail.com', 'Test1', 'Admin', 'admin');
-- (6, 'admin1@gmail.com', 'Test2', 'Admin', 'admin'),
-- (8, 'admin2@gmail.com', 'Test3', 'Admin', 'admin'),
-- (9, 'admin3@gmail.com', 'Test4', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(30) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
  (15, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700),
  (16, 'Smooth E Babyface Gel', 'Smooth E', 'cosmeceutical-products', 'Smooth E Babyface Gel เจลล้างหน้า สูตรไม่มีฟอง100% เหมาะกับผู้ที่มีผิว บอบบางแพ้ง่าย ไม่มีประจุไฟฟ้า ไม่ทิ้งสารตกค้าง เจลล้างหน้าสูตรอ่อนโยน 100% Non-Ionic ลดการอุดตันรูขุมขน ลดอาการแพ้ระคายเคือง ให้ความชุ่มชื้น เป็นสูตรเดียวที่แพทย์ผิวหนังแนะนำให้ผู้มีปัญหาผิวใช้', 'Smooth E Babyface Gel', 'SmoothEBabyfaceGel.jpg', 174, 255),
  (17, 'Tensoplast-L 100 Pcs.', 'Tensoplast', 'self-care', 'Tensoplast-L พลาสเตอร์ ชนิดผ้ายืด 19 มม. X 72 มม. 100 ชิ้น พลาสเตอร์ชนิดผ้ายืด ใช้ปิดบาดแผลเพื่อปกป้องแผลและป้องกันเชื้อโรคจากภายนอก มีแผ่นใยพิเศษป้องกันไม่ให้ติดแผล มีรูให้อากาศ ถ่ายเทได้สะดวก', 'Tensoplast-L', 'Tensoplast-L.jpg', 99, 104),
  (18, 'HandyHerb Gnite', 'Handy Herb', 'supplementary-food', 'HandyHerb Gnite จีไนท์ สมุนไพรคาโมมายล์ ช่วยให้หลับสนิทตลอดคืน สดชื่นตอนตื่น ขนาดคุ้มค่า (3 แผง 30 แคปซูล) แฮนดี้เฮิร์บ จี’ไนท์ ผลิตภัณฑ์เสริมอาหาร สารสกัดดอกคาโมมายล์และเห็ดหลินจือ ในรูปแบบแคปซูล สมุนไพรธรรมชาติปลอดภัย ช่วยลดอาการนอนหลับไม่สนิท ช่วยให้ร่างกายคลายความวิตกกังวล และเพิ่มระยะเวลาการนอนให้นานขึ้น ทำให้นอนหลับได้ดี', 'HandyHerb Gnite', 'HandyHerbGnite.jpeg', 78, 190),
  (19, 'Asepso Soap Original 80g', 'Asepso', 'cosmeceutical-products', 'Asepso Soap Original 80g สบู่อนามัยสูตรออริจินัล จากอาเซปโซ ช่วยชำระล้างแบคทีเรียที่เป็นสาเหตุของปัญหาผิวหนัง ผดผื่นคัน สิว กลิ่นกาย และน้ำกัดเท้า เพื่อสุขภาพผิวที่ดี เหมาะสำหรับทุกคนในครอบครัว', 'Asepso Soap Original', 'Asepso.jpg', 167, 24),
  (20, 'Tigerplast Elastic Fabric 100 Strips', 'Tigerplast', 'self-care', 'Tigerplast Elastic Fabric ไทเกอร์พล๊าส พลาสเตอร์ ปิดแผล ชนิดผ้ายืด พลาสเตอร์ปิดแผล 1 กล่อง บรรจุ 100 แผ่น', 'Tigerplast Elastic', 'Tigerplast.png', 55, 36),
  (21, 'Vistra Acerola Cherry 1000 mg', 'Vistra', 'supplementary-food', 'Vistra Acerola Cherry 1000mg PLUS Citrus Bioflavavonoids 45 Tablets สารสกัดจากเชอร์รี่สายพันธุ์ดีที่สุดในโลกมาถึง 1,000 ม.ก. อุดมไปด้วยวิตามินซีธรรมชาติ เสริมความแข็งแรงให้ร่างกาย บำรุงผิวพรรณให้เปล่งปลั่งสดใส', 'Vistra Acerola Cherry', 'Vistra.jpg', 223, 338),
  (22, 'Physiogel Hypoallergenic Daily Moisture Therapy Cream', 'Physiogel', 'cosmeceutical-products', 'Physiogel Hypoallergenic Daily Moisture Therapy Cream ทำงานอย่างเป็นธรรมชาติและอ่อนโยนบนผิว ซ่อมแซมปราการความชุ่มชื้นและลดความไวของผิว  Physiogel BioMimic สูตรขั้นสูงของเราส่งเสริมการซ่อมแซมผิวแห้งโดยสนับสนุนกระบวนการตามธรรมชาติของผิว  นอกจากนี้ยังป้องกันสิ่งเร้าภายนอกที่สามารถทำให้ผิวแห้งและแพ้ง่าย', 'Physiogel Hypoallergenic', 'Physiogel.jpg', 133, 290),
  (23, 'Tensoplastic 100 Pcs', 'Tensoplastic', 'self-care', 'Tensoplastic พลาสเตอร์ปิดแผล ชนิดพลาสติกใสกันน้ำ 100ชิ้น/กล่อง (เทนโซพล๊าสติค)พลาสเตอร์ยา เทนโซพล๊าสติค 1 ชิ้น มีตัวยาคอมิเฟนโบรไมด์ 0.15% ป้องกันเชื้อโรค มีแผ่นใยพิเศษ ป้องกันไม่ให้ติดแผล', 'Tensoplastic', 'Tensoplastic.jpg', 102, 89),
  (24, 'Vistra Salmon Fish Oil 75 Capsules', 'Vistra', 'supplementary-food', 'VISTRA Salmon Fish Oil 75 Capsules ผลิตภัณฑ์เสริมอาหารวิสทร้า น้ำมันปลาแซลมอน 1000 มก. ให้อีพีเอ 180 มก.และดีเอชเอ 120 มก.ลดความเสี่ยงของหลอดเลือด ลดระดับไตรกลีเซอร์ไรด์ และคอลเลสเตอรอลรวม บำรุงสมอง เสริมความจำ ลดอาการปวดข้อ', 'VISTRA Salmon Fish Oil', 'vistrasalmon.jpg', 105, 240),
  (25, 'BURNOVA Gel Plus - 25 g', 'Burnova', 'cosmeceutical-products', 'Burnova Gel Plus 25g เจลบำรุงผิว จากเบอร์นโนว่า รวมที่สุดของสมุนไพรจากธรรมชาติสูตรออร์แกนิคอย่าง ว่านหางจระเข้ สารสกัดจากบัวบก และแตงกวา ช่วยถนอมและบำรุงผิวบอบบางแพ้ง่าย โดยเฉพาะผู้ที่เป็นสิว ผิวแห้งลอก หรือผ่านการทำเลเซอร์ เพื่อฟื้นบำรุงผิวให้เนียนนุ่ม ชุ่มชื้น แลดูสุขภาพดี', 'Burnova Gel Plus', 'Burnova.jpg', 111, 75),
  (26, '3M NEXCARE', 'NEXCARE', 'self-care', '3M NEXCARE อุปกรณ์ประคบเย็นและร้อน 3เอ็ม เน็กซ์แคร์ ขนาดกลาง ใช้ประคบร้อนหรือเย็นแบบกระเป๋าน้ำร้อนหรือกระเป๋าน้ำแข็ง• บรรจุพร้อมถุงผ้า เน็กซ์แคร์™ เพื่อปกป้องผิวหนัง • สามารถใช้ได้ทั้งร้อนและเย็น ใช้ซ้ำได้หลายครั้ง• ใช้ประคบร้อนกรณี ปวดหลัง ปวดประจำเดือน ห้อเลือด ฟกช้ำ กล้ามเนื้อตึง• ใช้ประคบเย็นกรณี ปวดศีรษะ มีไข้สูง ปวดฟัน ข้อเคล็ด เลือดกำเดาไหล', '3M NEXCARE', 'nexcare.jpg', 56, 229),
  (27, 'Vistra Gluta Complex 1000 Plus Red Orange Extract 30 Capsules', 'Vistra', 'supplementary-food', 'Vistra Gluta Complex 1000 Plus Red Orange Extract 30 Capsules ผลิตภัณฑ์ป้องกันและฟื้นฟูผิวหมองคล้ำจากรังสี UVB ให้ผิวขาวกระจ่างใส จากวิสทร้า เพิ่มความชุ่มชื้นลดการอักเสบของผิว เสริม Antioxidant ด้วยกรดอัลฟา ไลโปเลอิค และสารสกัดจากส้มแดง ช่วยเสริมการทำงานของกลูต้าไธโอน เหมาะสำหรับผู้ที่มีผิวไวต่อแดด คล้ำเสียสะสม', 'Vistra Gluta Complex', 'VistraGluta.jpg', 130, 623),
  (28, 'Hiruscar Post Acne 10 g', '	HIRUSCAR', 'cosmeceutical-products', 'Hiruscar Post Acne ฮีรูสการ์ โพสต์ แอคเน่ ดูแลผิวที่มีปัญหาสิว คืนความใส เรียบเนียน ป้องกันปัญหาสิวอุดตัน ช่วยให้รอยด่างดำ รอยอักเสบดูจางลง ช่วยให้รอยหลุมสิวแลดูตื้นขึ้น คืนความใส เรียบเนียน ป้องกันปัญหาสิวอุดตัน ด้วยสูตร 3-in-1 Scar Clear Formulation ที่อุดมด้วย 5 ตัวช่วยเพื่อดูแลผิวครบวงจร', 'Hiruscar Post Acne', 'Hiruscar.jpg', 35, 270),
  (29, 'Tensoplastic Jumbo 5 pcs', 'Tensoplastic', 'self-care', 'Tensoplastic Jumbo เทนโซพล๊าสติค พลาสเตอร์ ปิดแผล ขนาดจัมโบ้ สีเนื้อ จำนวน 1 กล่อง บรรจุ 5 ชิ้น พลาสเตอร์ใสสีเนื้อ เป็นพลาสเตอร์ปิดแผล หลายขนาด ชนิดพลาสติกใส สีเนื้อ แผ่นบาง เข้ากับสีผิว ติดสนิทแนบแน่น แผ่นซึมซับพร้อมแผ่นใย กาวอะคริลิคพลาสเตอร์สะดวกสำหรับปิดแผลขนาดต่างๆกัน มีใยพิเศษไม่ติดแผล ช่วยให้แผลหายเร็ว', 'Tensoplastic Jumbo', 'TensoplasticJumbo.jpg', 23, 35),
  (30, 'HOF VITRUM Multivitamin soft gel 30 Capsules', 'HOF', 'supplementary-food', 'HOF VITRUM Multivitamin soft gel มัลติวิตามิน วิตามินรวมแบบซอฟเจลนำเข้าจากประเทศนิวซีแลนด์ เหมาะสำหรับผู้ต้องการบำรุงสุขภาพ และผิวพรรณไปพร้อมๆกัน ด้วยการนำเอาโปรตีนสกัดจากถั่วเหลือง (Soy Protein Isolate) ที่อุดมไปด้วยคุณประโยชน์ต่อสุขภาพและผิวพรรณนานับประการ', 'HOF VITRUM Multivitamin', 'hof.png', 48, 199),
  (31, 'LUX Aqua Sparkle Bar Soap 75 g', 'LUX', 'cosmeceutical-products', 'LUX Aqua Sparkle ปลุกผิวคุณให้สดชื่นมีชีวิตชีวา ด้วยเกลือแร่ จากธรรมชาติ และสาหร่ายทะเล ที่ช่วยให้ผิวชุ่มชื่นอิ่มน้ำ พร้อมกลิ่นหอมสดชื่นที่สร้างสรรค์โดยผู้เชี่ยวชาญน้ำหอมระดับโลก ช่วยให้คุณเริ่มต้นวันใหม่อย่างสดชื่น กระปรี้กระเปร่า', 'LUX Aqua Sparkle', 'lux.jpg', 33, 12),
  (32, 'SoS Plus S Series', 'SoS Plus', 'self-care', 'SoS Plus S Series เอสโอเอส พลัส รุ่น เอส ซีรีส์ ผ้าก๊อซปิดแผลแบบพร้อมใช้ 8 ซม.x8 ซม.4 แผ่น ใช้ปิดบาดแผลและป้องกันการติดเชื้อ จากแผลที่เกิดจากของมีคม แผลถลอก แผลเย็บ แผลจากไฟไหม้ และแผลจากการผ่าตัด2. ป้องกันการเสียดสีของผิวหนังที่เป็นรอยแดงหรือบอบบาง', 'SoS Plus S Series', 'SoSPlus.jpg', 25, 55);
  -- (33, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700),
  -- (34, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700),
  -- (35, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700),
  -- (36, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700),
  -- (37, 'Blackmores Fish Oil 1000 mg', 'Blackmores', 'supplementary-food', 'แบลคมอร์ส ฟิช ออยล์ 1000 (น้ำมันปลาชนิดแคปซูล) ผลิตภัณฑ์เสริมอาหารแบลคมอร์ส ฟิช ออยล์ 1000 น้ำมันปลาชนิดแคปซูล ผลิตภัณฑ์เสริมอาหาร ผลิตภัณฑ์นี้ให้ กรดไขมันกลุ่มโอเมก้า-3 ได้แก่ อีพีเอและดีเอชเอ เป็นน้ำมันปลาที่ได้จากปลาทะเล ให้กรดไขมันกลุ่มโอเมก้า-3 300 มิลลิกรัมต่อแคปซูล ผ่านการตรวจสอบปริมาณสารปรอทและตะกั่ว ใน 1แคปซูลประกอบด้วย น้ำมันปลา 1000 มิลลิกรัม ประกอบด้วยกรดไขมันไม่อิ่มตัวหลายตำแหน่ง (โอเมก้า-3): กรดไอโคซาเพนทาอิโนอิก (อีพีเอ) 180 มิลลิกรัม กรดโดโคซาเฮกซาอิโนอิก (ดีเอชเอ) 120 มิลลิกรัม และ วิตามิน อี 10 หน่วยสากล', 'Blackmores Fish Oil', 'Blackmores.jpg', 125, 700);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

-- INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
-- (210, 27, 85, 1, '2022-03-18', 1),
-- (211, 18, 85, 1, '2022-03-18', 1),
-- (212, 28, 85, 1, '2022-03-18', 0),
-- (213, 33, 55, 2, '2022-03-19', 0),
-- (214, 20, 55, 2, '2022-03-19', 0),
-- (215, 37, 55, 1, '2022-03-19', 0),
-- (216, 31, 55, 4, '2022-03-19', 0),
-- (217, 43, 55, 2, '2022-03-23', 0),
-- (218, 24, 55, 2, '2022-03-23', 0),
-- (219, 49, 55, 2, '2022-03-23', 0),
-- (220, 28, 55, 1, '2022-03-23', 0),
-- (221, 27, 55, 1, '2022-03-23', 0),
-- (222, 51, 55, 1, '2022-03-23', 0),
-- (223, 46, 55, 1, '2022-03-24', 0),
-- (224, 26, 55, 1, '2022-03-24', 0),
-- (225, 47, 55, 3, '2022-03-24', 0),
-- (226, 36, 55, 2, '2022-03-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('user', 'user@gmail.com', 'user', 55, 'user', 'KMUTNB');
-- ('kk', 'kk@gmail.com', 'kk', 62, 'kk', 'KMUTNB'),
-- ('korn', 'korn@gmail.com', 'korn', 63, 'korn', 'KMUTNB'),
-- ('Test1', 'Test1@gmail.com', 'Test1', 64, 'Test1', 'KMUTNB'),
-- ('Test2', 'Test2@gmail.com', 'Test2', 66, 'Test2', 'KMUTNB'),
-- ('Test3', 'Test3@gmail.com', 'Test3', 67, 'Test3', 'KMUTNB'),
-- ('Test4', 'Test4@gmail.com', 'Test4', 68, 'Kashika', 'KMUTNB'),
-- ('Test5', 'Test5', 'Test5', 69, 'Test5', 'KMUTNB'),
-- ('peem', 'peem@gmail.com', 'peem', 70, 'peem', 'KMUTNB'),
-- ('anawin', 'anawin@gmail.com', 'anawin447', 71, 'anawin', 'KMUTNB'),
-- ('Pang', 'pang@gmail.com', 'pang', 72, 'pang', 'KMUTNB'),
-- ('book', 'book@gmail.com', 'book', 75, 'book', 'KMUTNB'),
-- ('golf', 'golf@gmail.com', 'golf', 76, 'golf', 'KMUTNB'),
-- ('mentos', 'mentos@gmail.com', 'mentos', 78, 'mentos', 'KMUTNB'),
-- ('ninew', 'ninew@gmail.com', 'ninew', 79, 'ninew', 'KMUTNB'),
-- ('money', 'money@gmail.com', 'money', 80, 'money', 'KMUTNB'),
-- ('pee', 'pee@gmail.com', 'pee', 81, 'pee', 'KMUTNB'),
-- ('ice', 'ice@gmail.com', 'ice', 82, 'ice', 'KMUTNB'),
-- ('popcorn', 'popcorn@gmail.com', 'popcorn', 83, 'popcorn', 'KMUTNB'),
-- ('sleep', 'sleep@gmail.com', 'sleep', 84, 'sleep', 'KMUTNB'),
-- ('folk', 'folk@gmail.com', 'folk', 85, 'folk', 'KMUTNB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
