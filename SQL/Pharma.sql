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
  (32, 'SoS Plus S Series', 'SoS Plus', 'self-care', 'SoS Plus S Series เอสโอเอส พลัส รุ่น เอส ซีรีส์ ผ้าก๊อซปิดแผลแบบพร้อมใช้ 8 ซม.x8 ซม.4 แผ่น ใช้ปิดบาดแผลและป้องกันการติดเชื้อ จากแผลที่เกิดจากของมีคม แผลถลอก แผลเย็บ แผลจากไฟไหม้ และแผลจากการผ่าตัด2. ป้องกันการเสียดสีของผิวหนังที่เป็นรอยแดงหรือบอบบาง', 'SoS Plus S Series', 'SoSPlus.jpg', 25, 55),
  (33, 'Sambucol Black Elderberry Gummies 50 Pastilles', 'Sambucol', 'supplementary-food', 'Sambucol Black Elderberry Gummies แซมบูคอล แบล็ค เอลเดอร์เบอรี่ กัมมี่ 50 เม็ด (ผลิตภัณฑ์เสริมอาหารเด็ก) ผลิตภัณฑ์เสริมอาหารสำหรับเด็กที่เป็นที่ยอมรับทั่วโลก ออริจินัล แบล็ค เอลเดอร์เบอรี่ นำเข้าจากออสเตรเลีย ในรูปแบบ กัมมี่  อร่อย ประกอบด้วย สารสกัดจากแบล็ค เอลเดอร์เบอรี่สายพันธุ์ไนกร้า วิตามินซี และ ซิงค์ ประโยชน์ตามงานวิจัยทางการแพทย์ ของ แบล็ค เอลเดอร์เบอรี่ สายพันธุ์ ไนกร้า มีคุณสมบัติในการต้านอนุมูลอิสระสูงกว่าวิตามินซีถึง 4 เท่า และกระตุ้นภูมิคุ้มกัน และป้องกันไวรัสวิตามินซี และซิงค์ มีส่วนช่วยในการปรับการทำงานของภูมิคุ้มกันให้ทำงานเป็นปกติ ', 'Sambucol Black Elderberry Gummies', 'sambucol.jpg', 33, 479),
  (34, 'CERAVE Moisturising Lotion 88 ml', 'CERAVE', 'cosmeceutical-products', 'เซราวี CERAVE Moisturising Lotion โลชั่นบำรุงผิว เนื้อสัมผัสบางเบา 88ml.(โลชั่น Moisturising Lotion ผิวชุ่มชื้น) โลชั่นบำรุงผิวให้ความชุ่มชื้นตลอดวันและช่วยฟื้นฟูปราการปกป้องผิวหน้าและกาย สำหรับผิวธรรมดา ผิวมัน ผิวผสมฟื้นบำรุงลิปิดที่จำเป็นต่อความสมดุลและความรู้สึกสบายผิว เติมความชุ่มชื้นและช่วยฟื้นฟูปราการปกป้องผิวด้วยเซราไมด์ที่จำเป็นต่อผิว 3 ชนิด และ MVE Technology ผิวชุ่มชื้นตลอดวัน เนื้อสัมผัสบางเบา ปราศจากน้ำมัน ที่ช่วยเติมความชุ่มชื้นให้แก่ผิวและฟื้นฟูปราการผิวตามธรรมชาติ ด้วยสูตรบางเบาและไม่ก่อให้เกิดการอุดตัน (non-comedogenic) ไม่ก่อให้เกิดอาการแพ้ ปราศจากนำมัน และปราศจากน้ำหอมคิดค้นขึ้นโดยความร่วมมือของแพทย์ผู้เชี่ยวชาญด้านผิวหนังผ่านการรับรองโดย National Eczema Association', 'CERAVE Moisturising Lotion', 'cerava1.jpg', 36, 255),
  (35, 'Counterpain HR Relieves Muscular Pain 100g', 'Counterpain', 'self-care', 'Counterpain HR Relieves Muscular Pain 100g ครีมทาบรรเทาอาการปวด ครีมทาแก้ปวดกล้ามเนื้อ ใช้ถูนวดตามร่างกาย ขัดยอก วิงเวียนศีรษะ หน้ามืด ข้อเคล็ด กล้ามเนื้อตึง ขัดยอกหลังการเล่นกีฬา แมลงสัตว์กัดต่อย เป็นเม็ดตุ่มคันตามผิวหนัง ใช้ทาบริเวณหน้าท้อง จะบรรเทาอาการท้องขึ้น จุก เสียด มีกลไกการออกฤทธิ์ โดยตัวยาจะกระตุ้นปลายประสาทรับความรู้สึกถึงความร้อน – อบอุ่น ทำให้เกิดการตอบสนองถึงการบรรเทาอาการปวดลดลง', 'Counterpain HR', 'counterpain.jpg', 38, 299),
  (36, 'Dr.PONG VC120 Vitamin C 120 mg Candy', 'Dr.PONG', 'supplementary-food', 'Dr.PONG VC120 Vitamin C 120 mg candy วิตามินซีเม็ด SUGAR FREE 120 เม็ด วิตามินซีแคนดี้ เคี้ยวอร่อย ไม่มีน้ำตาล วิตามินซีสูงถึง 120 มิลลิกรัม เหมาะสำหรับทั้งเด็กและผู้ใหญ่ SUGAR FREE ไม่มีน้ำตาล ไม่ทำให้ฟันผุ สามารถเคี้ยวหรืออมหลังแปรงฟันสะอาดแล้วได้โดยไม่ต้องแปรงฟันใหม่ รับประทานจำนวนตามโดสที่ต้องการต่อวัน', 'Dr.PONG VC120 Vitamin C', 'drpong.jpg', 25, 55),
  (37, 'CERAVE Hydrating Cleanser 236 ml', 'CERAVE', 'cosmeceutical-products', 'เซราวี CERAVE Hydrating Cleanser ทำความสะอาดผิวหน้าและผิวกาย สำหรับผิวธรรมดา-ผิวแห้ง 236ml.(ทำความสะอาดผิวหน้า) เซราวี ไฮเดรตติ้ง คลีนเซอร์ ผลิตภัณฑ์ทำความสะอาดผิวหน้าและผิวกาย สูตรสำหรับผิวธรรมดาถึงผิวแห้ง ทำความสะอาดหมดจดอ่อนโยน  ไม่แห้งตึง ผิวที่มีปัญหาแห้งถึงแห้งมาก เซราวีประกอบด้วยเซราไมด์ที่จำเป็นต่อผิว 3 ชนิด เสริมสร้างปราการปกป้องผิว พร้อมผสานด้วยไฮยาลูรอนิกแอซิด เพื่อช่วยชดเชยความชุ่มชื้น สูตรปราศจากสบู่ น้ำหอม สูตรไม่ก่อให้เกิดการอุดตัน (Non Comedogenic) และสูตรไฮโปอัลเลอจีนิค ผลิตภัณฑ์ผ่านการทดสอบบนผิวที่บอบบางระคายเคืองง่าย ภายใต้การควบคุมดูแลโดยแพทย์ผู้เชี่ยวชาญทางด้านผิวหนัง และพัฒนาวิจัยค้นคว้าร่วมกับแพทย์ผิวหนัง', 'CERAVE Hydrating Cleanser', 'cerave2.jpg', 45, 405),
  (38, 'CoolFever For Adults 6 Sheets', 'CoolFever', 'self-care', 'CoolFever(คลูฟีเวอร์ผู้ใหญ่) คูลฟีเวอร์ แผ่นเจลลดไข้ สำหรับผู้ใหญ่ 6 ชิ้น คูลฟีเวอร์ แผ่นเจลลดไข้ สำหรับผู้ใหญ่ 6 ชิ้น ติดแน่น สามารถใช้ได้ทันที อ่อนโยนต่อผิว ช่วยลดไข้ได้เป็นอย่างดี ให้ความเย็นยาวนาน 8 ชั่วโมง', 'CoolFever For Adults', 'koolfever.jpg', 102, 88),
  (39, 'Dr.PONG Undenatured collagen type II 40 mg', 'Dr.PONG', 'supplementary-food', 'Dr.PONG Undenatured collagen type II 40 mg คอลลาเจนสำหรับข้อเข่า ของแท้จากอเมริกา UC-II™ ดูแลข้อเข่าและกระดูกด้วยดอกเตอร์พงศ์ อันดีเนเจอร์ คอลลาเจน ไทป์-ทู 40 มิลลิกรัม ผลิตจากสารสกัดพรีเมียมโดยใช้สารสกัดลิขสิทธิ์แท้จากอเมริกา Undenatured collagen type II (UC-II) ที่มีการศึกษางานวิจัยว่าช่วยเรื่องข้อเข่ามากที่สุด ใครที่มีอาการปวดเข่า เข่าเสื่อม และต้องการเพิ่มความสามารถในการเหยียดข้อเข่า อาหารเสริมตัวนี้เหมาะอย่างมากโดยเฉพาะสำหรับผู้สูงอายุ  ควรรับประทานวันละ 1 แคปซูล พร้อมอาหาร productnation', 'Dr.PONG Undenatured collagen type II', 'drpong2.jpg', 32, 445),
  (40, 'Cetaphil Oily Skin Cleanser 125 ml', 'Cetaphil', 'cosmeceutical-products', 'Cetaphil Oily Skin Cleanser เซตาฟิล ออยลี่ สกิน คลีนเซอร์ (สำหรับผิวมัน) ลดความมัน สิ่งสกปรก และเครื่องสำอางได้ล้ำลึก เหมาะกับผิวมัน ผิวผสม ผิวเกิดสิวง่าย นวัตกรรมสูตร Gentle Foaming Action ประสิทธิภาพสูงในการลดความมันส่วนเกิน สิ่งสกปรก และเครื่องสำอางบนใบหน้าได้อย่างล้ำลึก โดยไม่ทำให้ผิวแห้งตึง พัฒนามาสำหรับผิวหน้า ใช้ร่วมกับการรักษาสิวได้ผลดียิ่งขึ้น ลดความมันส่วนเกินอย่างได้ผลเมื่อใช้ต่อเนื่อง 2 สัปดาห์', 'Cetaphil Oily Skin Cleanser', 'cetaphil1.png', 55, 324),
  (41, 'NEOTICA Balm 25 g', 'NEOTICA', 'self-care', 'NEOTICA BALM ครีมทาบรรเทาอาการปวดกล้ามเนื้อ เคล็ดตามข้อ ครีมบรรเทาปวด ประกอบด้วยตัวยาที่มีสรรพคุณในการบรรเทาอาการปวดกล้ามเนื้อ เคล็ดตามข้อ เช่น ข้อเคล็ด กล้ามเนื้อตึง ขัดยอกหลังเล่นกีฬา รวมถึงแมลงกัดต่อย', 'NEOTICA Balm', 'neotica_blam.jpg', 12, 42),
  (42, 'Amino VITAL Energy Gel 100 g', 'Amino Vital', 'supplementary-food', 'Amino VITAL Energy Gel อะมิโนไวทัล เจลพลังงานผสมกรดอะมิโนพร้อมทาน 100 กรัม คืนความสดชื่นในการออกกำลังกายด้วยเจลลี่ฟื้นฟูซ่อมแซมกล้ามเนื้อ เนื้อสัมผัสเจลลี่ ทานง่าย มีส่วนผสมของกรดอะมิโน BCAAs ช่วยเพิ่มความแข็งแรงของกล้ามเนื้อ Amino VITAL แบรนด์ที่มียอดขายอันดับหนึ่งในประเทศญี่ปุ่น เจลพลังงานพร้อมทาน มีส่วนผสมของกรดอะมิโน 3,000 ม.ก. โดยมีกรดอะมิโนหลัก คือ BCAAs ถึง 1,700 ม.ก.มากกว่า 50% ของกรดอะมิโนทั้งหมด ซึ่งเป็นกรดอะมิโนจำเป็น 3 ชนิด ที่ร่างกายสร้างขึ้นเองไม่ได้ ได้แก่ แอล-ลูซีน, แอล-ไอโซลูซีน และ แอล-วาลีน ช่วยลดการสูญเสียกล้ามเนื้อระหว่างการเล่นกีฬา 1 ถุง มี 100 กรัม ให้พลังงาน 110 กิโลแคลลอรี่', 'Amino VITAL Energy Gel', 'aminovital.jpg', 18, 65),
  (43, 'Cetaphil Gentel Skin Cleanser 250 ml', 'Cetaphil', 'cosmeceutical-products', 'CETAPHIL GENTLE SKIN CLEANSER 250 ML เซตาฟิล เจนเทิล สกิน คลีนเซอร์ ผลิตภัณฑ์ทำความสะอาดผิว คงความชุ่มชื่น ผิวอ่อนนุ่มสูตรอ่อนโยน เป็นผลิตภัณฑ์ล้างหน้าและผิว สำหรับผู้มีอาการสิวอุดตัน ผิวหนังอักเสบ ผื่นจากภูมิแพ้ ผิวแห้ง หรือผู้มีผิวปกติหากต้องการผลิตภัณฑ์ที่ผ่านการวิจัยจากแพทย์ผิวหนังแล้ว ว่าไม่ทำให้ก่อให้เกิดปัญหากับผิว ปกป้องผิวด้วยสัมผัสละมุนอ่อนโยน สูตรเฉพาะของCetaphil ผลิตภัณฑ์ทำความสะอาดสำหรับสาวผิวแพ้ง่าย สูตรเฉพาะจากประเทศฝรั่งเศส ไม่มีส่วนผสมของสบู่และน้ำหอม จึงลดโอกาสการเกิดอาการแพ้ หรือระคายเคือง pH 6.5 ใกล้เคียงกับ pH 7 ของผิวหนัง คืนความเนียนนุ่มสู่ผิวสวยด้วย Moisturizing film ให้ความชุ่มชื้นกับผิว ไม่แห้งตึงหลังล้างหน้า พิเศษยิ่งกว่านั้นคือ สามารถใช้ทำความสะอาดผิวโดยไม่ต้องใช้น้ำล้างออกก็ได้ ในกรณีผิวแห้งมาก หรืออยู่ในสถานการณ์ที่ไม่มีน้ำสะอาดสำหรับล้าง', 'Cetaphil Gentel Skin Cleanser', 'cetaphil2.png', 33, 295),
  (44, 'PERSKINDOL Classic gel 200 ml', 'PERSKINDOL', 'self-care', 'PERSKINDOL Classic gel 200 ml เพอร์สกินดอล สูตรร้อน ชนิดเจล บรรเทาปวดกล้ามเนื้อ หลอดสีเหลือง บรรเทาอาการ ปวดหลัง ข้ออักเสบ อาการตึงตัวของกล้ามเนื้อ คอเคล็ด เคล็ด ขัดยอก อาการปวดของกล้ามเนื้อ การฟกช้ำ', 'PERSKINDOL Classic gel', 'perskindol.jpg', 78, 212),
  (45, 'NUUI WINTER PROMOTION NUUI Fibrry 12,000 mg', 'NUUI FIBERRY', 'supplementary-food', 'NUUI WINTER PROMOTION NUUI Fibrry หนุย ไฟเบอร์รี่ 1x10 (1 กล่อง 10 ซอง) ผลิตภัณฑ์เสริมอาหาร หนุย ไฟเบอร์รี่ ใยอาหารเพิ่มกากในระบบทางเดินอาหารช่วยกระตุ้นการขับถ่าย ใยอาหารเพิ่มกากในระบบทางเดินอาหาร ช่วยกระตุ้นการขับถ่าย ฟรุคโตโอลิโกแซคคาร์ไรด์ (FOS) จากเนเธอร์แลนด์ ผ่านการตรวจ GMP กฎหมาย ,ผ่านการวิเคราะห์ข้อมูลโภชนาการ', 'NUUI FIBERRY', 'nuuifiberry.jpg', 20, 525),
  (46, 'CLEAR NOSE Acne Care Solution Cleanser 150ml', 'Clear Nose', 'cosmeceutical-products', 'CLEAR NOSE Acne Care Solution Cleanser 150ml คลีนเซอร์สูตรเพื่อผิวเป็นสิวและผิวแพ้ง่าย ที่ออกแบบมาเพื่อการล้างหน้าที่สะอาดหมดจด จากเคีลยร์โนส ไม่ทิ้งความมันบนใบหน้าและไม่ทําให้ผิวแห้งตึง ปราศจากน้ำหอม และสารที่ก่อให้เกิดการระคายเคือง', 'CLEAR NOSE Acne Care', 'clearnose.jpg', 55, 259),
  (47, 'Siang Pure Relief 30 g', 'Siang Pure', 'self-care', 'Siang Pure Relief 30 g ครีมเซียงเพียว รีลีฟ ขนาด 30 กรัม1หลอด ครีมบรรเทาอาการปวดเมื่อยตามร่างกาย เนื้อครีมซึบซาบเร็ว ไม่เหนี่ยวเหนอะหนะ ตัวยาออกฤทธิ์นานด้วยส่วนประกอบหลักจากธรรมชาติและมีตัวยาสาคัญ เมทิลซาลิไซเลต (น้ำมันระกำ) มากกว่า 12 % นอกจากนั้นยังมีส่วนผสมของโคลฟ-ออยล์ ช่วยเสริมฤทธิ์คลายปวดเมื่อยได้ดี และให้กลิ่นหอมธรรมชาติ ไม่มีกลิ่นฉุนของยาต่างจากครีมบรรเทาปวดเมื่อยทั่วไป ผ่านการคัดสรรวัตถุดิบคุณภาพ และความใส่ใจในทุกขั้นตอนการผลิต ได้รับการรับรองมาตรฐานคุณภาพระดับสากล GMP PIC/s เหมาะสำหรับผู้ที่มีอาการปวดเมื่อยทั่วไป และสำหรับผู้ที่ออกกำลังกาย ใช้ทาก่อนและหลังออกกำลังกายจะช่วยคลายปวดกล้ามเนื้อได้ดียิ่งขึ้น', 'Siang Pure Relief', 'siangpure.jpg', 23, 59),
  (48, 'BEAUTY BUFFET B HI-COLLAGEN (DIETARY SUPPLEMENT PRODUCT) 100 G', 'BEAUTY BUFFET', 'supplementary-food', 'BEAUTY BUFFET B HI-COLLAGEN (DIETARY SUPPLEMENT PRODUCT) 100 G - บิวตี้ บุฟเฟ่ต์ บี ไฮ-คอลลาเจน (ผลิตภัณฑ์เสริมอาหาร) ผลิตภัณฑ์เสริมอาหาร รูปแบบคอลลาเจนชงดื่ม รับประทานง่าย ละลายเร็ว ซึ่งนอกจากจะช่วยบำรุงผิวพรรณ เพิ่มความยืดหยุ่นให้แก่ผิว ช่วยชะลอความชราของผิวตามอายุ ยังมีส่วนประกอบของสารสกัดกระดูกอ่อนจากจมูกปลาแซลมอน ที่ช่วยเพิ่มความยืดหยุ่นให้กับกระดูกอ่อนและช่วยในการกักเก็บน้ำในข้อต่อได้ และยังไปทดแทนส่วนที่สูญไปตามวัย', 'BEAUTY BUFFET B HI-COLLAGEN', 'beautybuffet.jpg', 19, 590),
  (49, 'Eucerin pH5 Dry Sensitive Skin Lotion 400ml', 'Eucerin', 'cosmeceutical-products', 'Eucerin pH5 Dry Sensitive Skin Lotion 400ml (ยูเซอริน โลชั่นบำรุงผิว สำหรับผิวแห้ง ผิวบอบบาง แพ้ง่าย บำรุงผิวนุ่มชุ่มชื้น) ผิวแห้ง บอบบางแพ้ง่ายต้องดูแลเป็นพิเศษเพื่อเสริมเกราะปกป้องผิว ผิวจึงไม่ไวต่อปัจจัยกระตุ้น pH5 Balance System & 5% Dexpanthenol นวัตกรรมที่ไม่เพียงเพิ่มและกักเก็บความชุ่มชื้นในผิว แต่ยังช่วยปรับและคงสมดุลสภาพแวดล้อมในเซลล์ผิว ไว้ที่ค่าตามธรรม่ชาติของผิวสุขภาพดี เพื่อเสริมให้การผลัดเซลล์ผิว เป็นไปอย่างสมบูรณ์ เสริมเกราะปกป้องผิว ผิวจึงไม่ไวต่อปัจจัยกระตุ้นต่างๆ', 'Eucerin pH5 Dry Sensitive Skin', 'eucerin.jpg', 37, 477),
  (50, 'SOS Plus T1 Waterproof 10 Strips', 'SOS Plus', 'self-care', 'SOS Plus T1 พลาสเตอร์ใสกันน้ำ ขนาด 2.5*5.6 ซม 10 แผ่น สำหรับปิดบาดแผลและรอยแผลชนิดต่างๆ ช่วยป้องกันน้ำ สิ่งสกปรกและเชื้อโรคเข้าสู่แผล สามารถระบายความชื้นและออกซิเจนผ่านเข้าออกได้ ทำให้แผลไม่อับชื้น พร้อมแผ่นดูดซับที่ไม่ติดแผล เวลาลอกออก ปราศจากกาว ลดอาการแพ้และระคายเคือง', 'SOS Plus T1', 'sosplus2.jpg', 30, 24);
  

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
