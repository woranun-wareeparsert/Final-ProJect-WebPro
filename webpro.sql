CREATE DATABASE  IF NOT EXISTS `project_database` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_database`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project_database
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'bas_sos_2011@hotmail.com','bbaass0088'),(2,'taifhoon@gmail.com','tf2545'),(3,'aitax09@gmail.com','taxtax'),(4,'louis@gmail.com','louislouis');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tokens`
--

DROP TABLE IF EXISTS `admin_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_tokens_UN` (`token`),
  KEY `admin_token_FK` (`user_id`),
  CONSTRAINT `admin_token_FK` FOREIGN KEY (`user_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tokens`
--

LOCK TABLES `admin_tokens` WRITE;
/*!40000 ALTER TABLE `admin_tokens` DISABLE KEYS */;
INSERT INTO `admin_tokens` VALUES (3,1,'zGl9pFkQPARK#l2y4&b!bN4vpdGR-mE@5aNqYOaunWi*QUDXZ6W5#zZLtux*AHDya6Yyse1kl8EZw^7-Y65J33$hG47VTL^v=qPN'),(4,3,'u=!e9!tAcK8fLW@qBKn3y$8iR===OXv@2oljR*kw-/a*HbE=De/=MD/#TJK1Gccs^IuIlsv9aPCiTSk^-Nn!-9koBr1=r^s7Qq^K'),(5,4,'aXcy6sWFkuYBU0*P2fH1ib27wnR/8U1dkHc-euPtavlIU9L37W*J4i4zAJ69Oao$CKCiZ#GRn&94HI/gs*8b&XyFaWCJJ6qFpVOD');
/*!40000 ALTER TABLE `admin_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phone_no` char(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Michael Dayeon','MD2544','michael_zaza@gmail.com','0846585482'),(2,'Chityong Somyai','0854595678Chityong','chityong@hotmail.com','0854595678'),(3,'Tanongtouy Kongkuankoi','tntkkk2001','job_2001@hotmail.com','0655845210'),(4,'Donald Trump','AoT1558','moumou@yahoo.co.th','0992738191'),(5,'Wilson Reece','BSC853CSB','ilovetatoo@hotmail.com','0653332141'),(6,'Smith Kyle','idea_new','lolopooklolo@yahoo.co.th','0929990483'),(7,'Brown Joe','ALIBABA','caramel44@gmail.com','0847362223'),(8,'Davis Isla','MAKATEC00','davisy@yahoo.co.th','0859203901'),(9,'Williams Mia','netweld55','liliwilliam@yahoo.co.th','0839274055'),(10,'Evans Isabella','obschss','webpro@hotmail.com','0883927841'),(11,'Lam Abigail','avattava','cutedog3@gmail.com','0983832705'),(12,'Ariyapoon Inaki','Abc012','ariyapoon@yahoo.co.th','0956843512'),(13,'Woranun Laleevalert','123123','woranunwoo@hotmail.com','0854582515'),(18,'Steven','stev5682','sking@gmail.com','0866412863'),(19,'David','dav823','daustin@hotmail.com','0923584460'),(20,'Eleni','elel294','ezlotting@gmail.com','0655841203'),(21,'Gerald','gerdlral','gerald@gmail.com','0835126822'),(22,'Sarah','abcd','sabell@hotmail.com','0881566492'),(24,'popo popopo','Pipo5555','helloyourmom@gmail.com','0909090909'),(25,'dada dada','Haha1234','yoyo@gmail.com','0000000000'),(26,'sasa sasas','Yaya1234','yaya@gmail.com','0877777777'),(27,'sasasa assasa','Louis250445','louisss@hotmail.com','0123456789'),(28,'sasasa asasasas','Llouis250445','louissarun@hotmail.com','0908767865'),(29,'Phatcharapon Sasawattecha','Baspop0102','baszaza@gmail.com','0616645773');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tokens`
--

DROP TABLE IF EXISTS `customer_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_UN` (`token`),
  KEY `token_FK` (`user_id`),
  CONSTRAINT `token_FK` FOREIGN KEY (`user_id`) REFERENCES `customer` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tokens`
--

LOCK TABLES `customer_tokens` WRITE;
/*!40000 ALTER TABLE `customer_tokens` DISABLE KEYS */;
INSERT INTO `customer_tokens` VALUES (15,9,'tsy=Sx61RQ5R8nza8Q$d&rg^Nc3StZibBYSW5ksgc!LDKj#vGI1DI=f$j8CzXC-Y0-$iibW3=ICxrz^IOJ!Yc1mEshsnz10rqKEL'),(33,1,'1E2zYUlTllvfbbC14ej$GndT84BJOo$!p4Lppb6Wgll#QHchHPrSb2Juyz1xrUreP6ZG7Q2HlTy=#344E3y4qki#@8^am^hiMED4'),(36,12,'kFFe#5I&4@AZ!h6SnnMCx1V5fDWGEYE&jrb3g=S3L@ucmddhTeig=LvkwLpP$2GWwO8Y6=00$QNNvzo*t9/qSe$5IG$BxBKa-=mL'),(38,2,'x*D*&JNvhrldxD7NfV^1#KB-sqZmMH&#rdF#/S$D0FqjNt$2U^tXk$Szt$aGmAIult&pxiY#UJTLXApW0b^lKj9tGZ4e/wE5uCS$'),(42,28,'bd&osUmZoLmXKydKPO9eLoeWEq^Vn70yhdjh5WPbmV@r7lbx#D#!AMbWGmu2/qZy8d2rGUI6qif2j&VSTkfa^zXUZY!qeDgk8CkK'),(44,13,'@fw9lfZyR^9iG/JrtduuwnFY=k^aeqiq/3z8B5r&VbsigdHKD=16*NeiP/6YSXup8o1lPxMBJMwBngUA8bByh@X@NYdv5p4MbSoF');
/*!40000 ALTER TABLE `customer_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `m_id` int NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `img_movie` varchar(255) DEFAULT NULL,
  `plot` longtext,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Fantastic Beasts: The Secrets of Dumbledore','2022-04-13','David Yates','Eddie Redmayne, Katherine Waterston, Mads Mikkelsen','/uploads/dobbledoor.jpg','Professor Albus Dumbledore knows the powerful Dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts Magizoologist Newt Scamander to lead an intrepid team of wizards, witches and one brave Muggle baker on a dangerous mission, where they encounter old and new beasts and clash with Grindelwald\'s growing legion of followers. But with the stakes so high, how long can Dumbledore remain on the sidelines?'),(2,'A Ghost Story','2022-04-02','Chantawit Tangjitwong','Krit Three man down','/uploads/ghoststory.jpg','A musician lives with his wife in a small house in Dallas, Texas. They are looking for a new home and planning their move. She tells him that before she moves away from a place, she likes to hide a note for herself there, in case she ever returns. They o...'),(3,'The Avenger','2015-04-02','Michael Bay','Robert Downeys Jr','/uploads/avenger.jpg','The Asgardian Loki encounters the Other, the leader of an extraterrestrial race known as the Chitauri. In exchange for retrieving the Tesseract,[N 2] a powerful energy source of unknown potential, the Other promises Loki an army with which he can subjugate Earth. Nick Fury, director of the espionage agency S.H.I.E.L.D., arrives at a remote research facility, where physicist Dr. Erik Selvig is leading a team experimenting on the Tesseract. The Tesseract suddenly activates and opens a wormhole, allowing Loki to reach Earth. Loki steals the Tesseract and uses his scepter to enslave Selvig and other agents, including Clint Barton, to aid him.'),(4,'SpiderMan - Far From home','2021-11-24','Michael Bay','Tom Holland','/uploads/spiderman.jpg','When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.'),(5,'Jurassic World 3','2022-05-15','Colin T. Trevorrow','Bryce Dallas Howard','/uploads/jurassicworld3.jpg','Dominion is smashing its way onto the big screen in a matter of months, and as we get closer and closer to the big day, there\'s more and more information about the movie to pore over. For one thing, a trailer is finally here, with the original trio – Sam Neill, Laura Dern, and Jeff Goldblum – reunited once more, starring alongside Chris Pratt and Bryce Dallas Howard. Plus, the latest update is the film\'s monster-sized runtime: a massive 2 hours and 23 minutes. That means the film is the longest ever of the franchise. '),(6,'Harry Potter and the Sorcerers Stone','2022-01-20','Chris Joseph Columbus','Daniel Radcliffe, Emma Watson, Rupert Grint','/uploads/harrypotter.jpg','The series follows the life of a boy named Harry Potter. In the first book, Harry Potter and the Philosopher\'s Stone, Harry lives in a cupboard under the stairs in the house of the Dursleys, his aunt, uncle and cousin. The Dursleys consider themselves perfectly normal, but at the age of eleven, Harry discovers that he is a wizard. He meets a half-giant named Hagrid who invites him to attend the Hogwarts School of Witchcraft and Wizardry. Harry learns that as a baby, his parents were murdered by the dark wizard Lord Voldemort. When Voldemort attempted to kill Harry, his curse rebounded and Harry survived with a lightning-shaped scar on his forehead.'),(7,'Doctor Strange in the Multiverse of  Madness','2022-05-04','Sam Raimi','Benedict Cumberbatch, Elizabeth Olsen, Benedict Wong','/uploads/doctorstrange2.jpg','A sorcerer, later revealed to be Kaecilius (Mads Mikkelsen), tears some pages from a chained book in a old, seemingly gothic library. His minions restrain the librarian/guardian with bands of energy. Kaecilius uses two large knives to decapitate the man and escapes with the help of several followers. The owner of the book, the Ancient One (Tilda Swinton), goes after them. As he flees, Kaecilius bends, folds, and reshapes the streets and buildings of the city (think Inception (2010), but more kaleidoscopic). Though she\'s a formidable magical fighter, the Ancient One is unable to pin down Kaecilius and he escapes.'),(8,'Conan The Movie 25 - The Bride of Halloween','2022-05-26','Susumu Mitsunaka','Edogawa Conan, Mori Run, Mori Kogoro','/uploads/conan.jpg','Japanese high school student Kudo Shinichi is a well-known detective, known as the savior of the Japanese police. Once, when Kudo went out to play with his girlfriend Mulilan, he saw an illegal transaction going on. Kudo took his girlfriend to observe the deal, and suddenly a man behind him knocked him to the ground. The man and his accomplices let Kudo take a medicine.'),(9,'SLR กล้องติดตาย','2022-04-21','Lertsiri Boonmee, Wuttichai Wongnapadol','Kornpat Krungphan,  Cherprang Areekul,  Sadanon Durongkweroj','/uploads/camera.jpg','“แดน” นักศึกษาหนุ่มคณะภาพถ่าย ที่สอบธีสิสกับอาจารย์เอมมาเป็นปีแล้ว แต่ยังไม่ผ่านเสียที จนในที่สุด อาจารย์เอมได้ให้กล้อง SLR ให้ถ่ายงานที่ดีที่สุดมาส่ง แดนกำลังจะค้นพบว่า มันเป็นบททดสอบของกล้องปีศาจ ซึ่งเขาไม่มีทางหนี นอกจากจะต้องเลือกว่าจะยอมตามมัน หรือจะสู้กับมัน และเขากำลังจะลากแฟนและเพื่อนของเขาอย่าง “น้ำ” และ “เกรท” เข้ามาร่วมชะตากรรมอันน่าสะพรึงกลัว ซึ่งรายล้อมไปด้วยความตายจากกล้องนรกนี้ด้วย'),(10,'Sonic 2 - The headgehog','2022-04-06','Jeff Fowler','Jim Carrey,  Ben Schwartz,  Idris Elba','/uploads/sonic2.jpg','In San Francisco, California, a seemingly normal day is interrupted by a shocking spectacle: an anthropomorphic hedgehog with blue fur, white gloves and red shoes is running through the city at breathtaking speed while a flying machine piloted by a mustached scientist dressed in red gives chase and fires explosive energy blasts!'),(11,'Morbius','2022-03-31','Daniel Espinosa','Jared Leto,  Adria Arjona,  Matt Smith','/uploads/morbius.jpg','At a hospital in Greece, 10-year-old Michael Morbius welcomes his surrogate brother Lucien, whom he renames Milo; they bond over their shared blood illness and desire to be \"normal\". Their adoptive father and hospital director Nicholas arranges for Morbius to attend medical school in New York while he focuses on caring for Milo.'),(13,'Ninja Hattori','2022-05-03','Fujiko Fujio','Kanzo Hattori, Shinzō Hattori, Kenichi Mitsuba','\\uploads\\myImage-1651519910181.jpg','10-year-old Kenichi Mitsuba is an average kid who goes to secondary school and struggles with his studies. He is very stubborn and lazy, therefore always ending up frustrating his parents and teachers. He loves to find an easy way out of everything much to the annoyance of Hattori.\r\n\r\nMeanwhile, a little ninja named Kanzo Hattori becomes best friends with Kenichi. Hattori becomes a part of the Mitsuba family along with his brother Shinzo and his ninja dog, Shishimaru. Hattori helps Kenichi with his problems, constantly keeping an eye on him as a good friend. Yumeko is portrayed as Kenichi\'s love interest.\r\n\r\nThe main antagonists are Kemumaki, a Koga Ninja, and his ninja-cat, Kagechiyo. Kemumaki always causes trouble for Kenichi and Hattori, sometimes inventing new devices to fight against Hattori but always ending up in mishap. Kenichi asking Hattori to take revenge is a recurring storyline present throughout many episodes. Although Hattori is a good friend, Kenichi sometimes fights with him due to misunderstandings created by Kemumaki. Sometimes Jippou, Togejirou and Tsubame help him.\r\n\r\nThere are five main locations in the series: Tokyo City, Shinto Temple, Iga Province, Iga Mountains, and Kōga Valley.'),(18,'Batman','2022-05-03','แมตต์ รีฟส์','โรเบิร์ต สายควัน','\\uploads\\myImage-1651520203257.jpg','ผลงานจากวอร์เนอร์ บราเดอร์ส พิกเจอร์ส สู่ภาพยนตร์ของแม็ตต์ รีฟส์ เรื่อง “The Batman” นำแสดงโดย โรเบิร์ต แพททินสัน ผู้มาถ่ายทอด 2 บทบาททั้งสายลับศาลเตี้ยแห่งก็อตแธม ซิตี้ และมหาเศรษฐีผู้หยิ่งผยอง บรูซ เวย์น ในช่วง 2 ปีแห่งการย่องเดินตามท้องถนนในร่างแบทแมน (โรเบิร์ต แพททินสัน) เอาชนะความกลัวและเข้าไปพัวพันกับอาชญากรรมทั้งหลาย จนบรูซ เวย์นถลำตัวเข้าสู่เงามืดแห่งก็อตแธม ซิตี้ โดยมีสหายที่วางใจได้เพียงไม่กี่คนอย่างอัลเฟรด เพนนีเวิร์ธ (แอนดี้ เซอร์คิส), เจมส์ กอร์ดอน (เจฟฟรีย์ ไรท์) ท่ามกลางกลุ่มผู้ทุจริตที่เลื่องชื่อของเมือง ศาลเตี้ยผู้โดดเดี่ยวต้องออกโรงแก้แค้นเพียงลำพังท่ามกลางประชาชนที่อยู่เคียงข้างเขา เมื่อฆาตกรได้เล็งเป้าหมายเป็นกลุ่มคนระดับแนวหน้าของก็อตแธม โดยมีการวางแผนร้ายอย่างต่อเนื่อง การสะกดรอยอย่างลับๆ ครั้งนี้ได้นำสายลับผู้ยิ่งใหญ่ของโลกเข้าสู่การสืบสวนในโลกของเหล่าอันธพาล เขาต้องเผชิญหน้ากับตัวละครต่างๆ ทั้งเซลิน่า ไคล์/ฉายา แคทวูแมน (โซอี้ คราวิตซ์), ออสวัลด์ คอบเบิลพอต/ฉายา เดอะ เพนกวิน (โคลิน ฟาร์เรล), คาร์ไมน์ ฟัลโคน (จอห์น เทอร์เทอร์โร) และเอ็ดเวิร์ด แนชตัน/ฉายา เดอะ ริดเลอร์ (พอล ดาโน่) เมื่อหลักฐานเริ่มชัดเจนมากขึ้น และแผนการของพวกเหล่าร้ายปรากฏให้เห็นได้ชัด แบทแมนต้องสานสัมพันธ์ครั้งใหม่เพื่อเปิดโปงโฉมหน้าผู้กระทำผิด และนำความยุติธรรมมาสยบการใช้อำนาจในทางมิชอบและการทุจริตที่เกิดขึ้นกับก็อตแธม ซิตี้มาอย่างยาวนาน');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `order_seats` varchar(255) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `CUSTOMER_cid` int NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_ORDER_CUSTOMER1_idx` (`CUSTOMER_cid`),
  CONSTRAINT `fk_ORDER_CUSTOMER1` FOREIGN KEY (`CUSTOMER_cid`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2022-04-13','A01, A02',600,1,'paid'),(2,'2022-04-13','B01, B02',520,2,'paid'),(3,'2022-04-13','C05',200,3,'paid'),(4,'2022-04-13','C07',200,4,'paid'),(5,'2022-04-13','C08, C09, C10, C11',800,5,'paid'),(6,'2022-04-13','D04, D05, C02, C03',800,10,'paid'),(7,'2022-04-20','A01, A02',600,22,'paid'),(8,'2022-04-20','B01, B02',520,12,'paid'),(9,'2022-04-20','C05',200,13,'paid'),(10,'2022-04-20','C07',200,18,'paid'),(11,'2022-04-20','C08, C09, C10, C11',800,20,'paid'),(12,'2022-04-20','D04, D05, C02, C03',800,21,'paid'),(91,'2022-05-02','E07, E08, E06, ',600,13,'paid'),(92,'2022-05-02','D07, D08, ',400,12,'paid'),(93,'2022-05-02','B01, D01, ',460,1,'paid'),(96,'2022-05-02','C01, C02, C03, ',900,13,'paid'),(97,'2022-05-02','E07, E06, ',400,13,'paid'),(99,'2022-05-03','C05, C06, ',400,29,'paid'),(100,'2022-05-03','B08, B07, ',520,29,'paid'),(101,'2022-05-03','B03, ',300,29,'paid');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `item_price` float DEFAULT NULL,
  `ORDER_order_id` int NOT NULL,
  PRIMARY KEY (`item_no`,`ORDER_order_id`),
  KEY `fk_ORDER_ITEM_ORDER1_idx` (`ORDER_order_id`),
  CONSTRAINT `fk_ORDER_ITEM_ORDER1` FOREIGN KEY (`ORDER_order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,300,1),(2,300,1),(3,260,2),(4,260,2),(5,200,3),(6,200,4),(7,200,5),(8,200,5),(9,200,5),(10,200,5),(11,200,6),(12,200,6),(13,200,6),(14,200,6),(15,300,7),(16,300,7),(17,260,8),(18,260,8),(19,200,9),(20,200,10),(21,200,11),(22,200,11),(23,200,11),(24,200,11),(25,200,12),(26,200,12),(27,200,12),(28,200,12),(141,200,91),(142,200,91),(143,200,91),(144,200,92),(145,200,92),(146,260,93),(147,200,93),(156,300,96),(157,300,96),(158,300,96),(159,200,97),(160,200,97),(163,200,99),(164,200,99),(165,260,100),(166,260,100),(167,300,101);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` int NOT NULL AUTO_INCREMENT,
  `no_of_seats` varchar(255) DEFAULT NULL,
  `THEATRE_tid` int NOT NULL,
  `SEAT_TYPE_type_id` int NOT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `fk_SEAT_THEATRE1_idx` (`THEATRE_tid`),
  KEY `fk_SEAT_SEAT_TYPE1_idx` (`SEAT_TYPE_type_id`),
  CONSTRAINT `fk_SEAT_SEAT_TYPE1` FOREIGN KEY (`SEAT_TYPE_type_id`) REFERENCES `seat_type` (`type_id`),
  CONSTRAINT `fk_SEAT_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,'A01',1,3),(2,'A02',1,3),(3,'A03',1,3),(4,'A04',1,3),(5,'A05',1,3),(6,'A06',1,3),(7,'A07',1,3),(8,'A08',1,3),(9,'A09',1,3),(10,'A10',1,3),(11,'B01',1,2),(12,'B02',1,2),(13,'B03',1,2),(14,'B04',1,2),(15,'B05',1,2),(16,'B06',1,2),(17,'B07',1,2),(18,'B08',1,2),(19,'B09',1,2),(20,'B10',1,2),(21,'C01',1,1),(22,'C02',1,1),(23,'C03',1,1),(24,'C04',1,1),(25,'C05',1,1),(26,'C06',1,1),(27,'C07',1,1),(28,'C08',1,1),(29,'C09',1,1),(30,'C10',1,1),(31,'D01',1,1),(32,'D02',1,1),(33,'D03',1,1),(34,'D04',1,1),(35,'D05',1,1),(36,'D06',1,1),(37,'D07',1,1),(38,'D08',1,1),(39,'D09',1,1),(40,'D10',1,1),(41,'E01',1,1),(42,'E02',1,1),(43,'E03',1,1),(44,'E04',1,1),(45,'E05',1,1),(46,'E06',1,1),(47,'E07',1,1),(48,'E08',1,1),(49,'E09',1,1),(50,'E10',1,1),(51,'A01',2,3),(52,'A02',2,3),(53,'A03',2,3),(54,'A04',2,3),(55,'A05',2,3),(56,'A06',2,3),(57,'A07',2,3),(58,'A08',2,3),(59,'A09',2,3),(60,'A10',2,3),(61,'B01',2,2),(62,'B02',2,2),(63,'B03',2,2),(64,'B04',2,2),(65,'B05',2,2),(66,'B06',2,2),(67,'B07',2,2),(68,'B08',2,2),(69,'B09',2,2),(70,'B10',2,2),(71,'C01',2,1),(72,'C02',2,1),(73,'C03',2,1),(74,'C04',2,1),(75,'C05',2,1),(76,'C06',2,1),(77,'C07',2,1),(78,'C08',2,1),(79,'C09',2,1),(80,'C10',2,1),(81,'D01',2,1),(82,'D02',2,1),(83,'D03',2,1),(84,'D04',2,1),(85,'D05',2,1),(86,'D06',2,1),(87,'D07',2,1),(88,'D08',2,1),(89,'D09',2,1),(90,'D10',2,1),(91,'E01',2,1),(92,'E02',2,1),(93,'E03',2,1),(94,'E04',2,1),(95,'E05',2,1),(96,'E06',2,1),(97,'E07',2,1),(98,'E08',2,1),(99,'E09',2,1),(100,'E10',2,1),(101,'A01',3,3),(102,'A02',3,3),(103,'A03',3,3),(104,'A04',3,3),(105,'A05',3,3),(106,'B01',3,3),(107,'B02',3,3),(108,'B03',3,3),(109,'B04',3,3),(110,'B05',3,3),(111,'C01',3,3),(112,'C02',3,3),(113,'C03',3,3),(114,'C04',3,3),(115,'C05',3,3);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_type`
--

DROP TABLE IF EXISTS `seat_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  `type_price` int DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_type`
--

LOCK TABLES `seat_type` WRITE;
/*!40000 ALTER TABLE `seat_type` DISABLE KEYS */;
INSERT INTO `seat_type` VALUES (1,'Normal',200),(2,'Honeymoon',260),(3,'First Class',300);
/*!40000 ALTER TABLE `seat_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show`
--

DROP TABLE IF EXISTS `show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show` (
  `show_id` int NOT NULL AUTO_INCREMENT,
  `show_date` date DEFAULT NULL,
  `st_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `THEATRE_MOVIE_MOVIES_m_id` int NOT NULL,
  `THEATRE_MOVIE_THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`show_id`),
  KEY `fk_SHOW_THEATRE_MOVIE1_idx` (`THEATRE_MOVIE_MOVIES_m_id`,`THEATRE_MOVIE_THEATRE_tid`),
  CONSTRAINT `fk_SHOW_THEATRE_MOVIE1` FOREIGN KEY (`THEATRE_MOVIE_MOVIES_m_id`, `THEATRE_MOVIE_THEATRE_tid`) REFERENCES `theatre_movie` (`MOVIES_m_id`, `THEATRE_tid`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show`
--

LOCK TABLES `show` WRITE;
/*!40000 ALTER TABLE `show` DISABLE KEYS */;
INSERT INTO `show` VALUES (93,'2022-04-13','17:00:00','19:30:00','TH',1,1),(94,'2022-04-13','17:00:00','19:30:00','TH',1,2),(95,'2022-04-13','20:00:00','22:00:00','ENG',11,3),(96,'2022-04-14','13:00:00','14:30:00','TH',2,1),(97,'2022-04-14','13:00:00','14:30:00','ENG',3,2),(98,'2022-04-14','15:00:00','17:00:00','TH',4,2),(99,'2022-04-14','17:00:00','19:15:00','ENG',4,1),(100,'2022-04-14','20:00:00','22:00:00','ENG',4,1),(101,'2022-04-14','20:00:00','22:00:00','ENG',4,2),(102,'2022-04-14','20:00:00','22:00:00','ENG',11,3),(112,'2022-04-15','11:00:00','13:00:00','TH',1,1),(113,'2022-04-15','11:00:00','13:00:00','TH',1,2),(114,'2022-04-15','11:00:00','13:00:00','TH',11,3),(115,'2022-04-15','15:00:00','17:00:00','TH',4,1),(116,'2022-04-15','15:00:00','17:00:00','TH',4,2),(121,'2022-05-05','20:30:00','22:00:00','TH',7,1),(122,'2022-05-15','21:00:00','23:00:00','ENG',5,2),(125,'2022-05-26','18:00:00','19:45:00','ENG',8,2),(127,'2022-04-18','13:00:00','14:30:00','TH',2,1),(128,'2022-04-18','13:00:00','14:30:00','ENG',3,2),(129,'2022-04-18','15:00:00','17:00:00','TH',4,2),(130,'2022-04-18','17:00:00','19:15:00','ENG',4,1),(131,'2022-04-18','20:00:00','22:00:00','ENG',4,1),(132,'2022-04-18','20:00:00','22:00:00','ENG',4,2),(133,'2022-04-18','20:00:00','22:00:00','ENG',11,3),(134,'2022-04-19','17:00:00','19:30:00','TH',1,1),(135,'2022-04-19','17:00:00','19:30:00','TH',1,2),(136,'2022-04-19','20:00:00','22:00:00','ENG',11,3),(137,'2022-04-20','11:00:00','13:00:00','TH',11,3),(138,'2022-04-20','15:00:00','17:00:00','TH',4,1),(139,'2022-04-20','15:00:00','17:00:00','TH',4,2),(141,'2022-05-20','20:30:00','22:00:00','TH',7,1),(142,'2022-05-04','21:00:00','23:00:00','ENG',5,2),(143,'2022-04-21','13:00:00','14:30:00','TH',2,1),(144,'2022-04-21','13:00:00','14:30:00','ENG',3,2),(145,'2022-04-21','15:00:00','17:00:00','TH',4,2),(146,'2022-04-21','17:00:00','19:15:00','ENG',4,1),(147,'2022-04-21','20:00:00','22:00:00','ENG',4,1),(148,'2022-04-21','20:00:00','22:00:00','ENG',4,2),(149,'2022-04-21','20:00:00','22:00:00','ENG',11,3),(150,'2022-04-25','17:00:00','19:30:00','TH',1,1),(151,'2022-04-25','17:00:00','19:30:00','TH',1,2),(152,'2022-04-25','20:00:00','22:00:00','ENG',11,3),(160,'2022-05-03','17:00:00','18:40:00','ENG',13,2),(161,'2022-04-21','20:00:00','22:30:00','ENG',18,3);
/*!40000 ALTER TABLE `show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `hall_no` int DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
INSERT INTO `theatre` VALUES (1,'JunRongJai 1','84/26 R.jaroenkrung Bangkholahm, Bangkok 10120',1),(2,'JunRongJai 2','84/26 R.jaroenkrung Bangkholahm, Bangkok 10120',2),(3,'RongJai 1','25/48 R.Jun Bangruk, Bangkok 10510',3);
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_admin`
--

DROP TABLE IF EXISTS `theatre_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_admin` (
  `ADMIN_admin_id` int NOT NULL,
  `THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`ADMIN_admin_id`,`THEATRE_tid`),
  KEY `fk_THEATRE_ADMIN_THEATRE1_idx` (`THEATRE_tid`),
  CONSTRAINT `fk_THEATRE_ADMIN_ADMIN1` FOREIGN KEY (`ADMIN_admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `fk_THEATRE_ADMIN_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_admin`
--

LOCK TABLES `theatre_admin` WRITE;
/*!40000 ALTER TABLE `theatre_admin` DISABLE KEYS */;
INSERT INTO `theatre_admin` VALUES (1,1),(1,2),(2,3);
/*!40000 ALTER TABLE `theatre_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_movie`
--

DROP TABLE IF EXISTS `theatre_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_movie` (
  `MOVIES_m_id` int NOT NULL AUTO_INCREMENT,
  `THEATRE_tid` int NOT NULL,
  PRIMARY KEY (`MOVIES_m_id`,`THEATRE_tid`),
  KEY `fk_THEATRE_MOVIE_MOVIES1_idx` (`MOVIES_m_id`),
  KEY `fk_THEATRE_MOVIE_THEATRE1_idx` (`THEATRE_tid`),
  CONSTRAINT `fk_THEATRE_MOVIE_MOVIES1` FOREIGN KEY (`MOVIES_m_id`) REFERENCES `movies` (`m_id`),
  CONSTRAINT `fk_THEATRE_MOVIE_THEATRE1` FOREIGN KEY (`THEATRE_tid`) REFERENCES `theatre` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_movie`
--

LOCK TABLES `theatre_movie` WRITE;
/*!40000 ALTER TABLE `theatre_movie` DISABLE KEYS */;
INSERT INTO `theatre_movie` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(7,1),(7,2),(8,1),(8,2),(9,3),(10,3),(11,3),(13,1),(13,2),(18,1),(18,3);
/*!40000 ALTER TABLE `theatre_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `SHOW_show_id` int NOT NULL,
  `ORDER_ITEM_item_no` int NOT NULL,
  `ORDER_ITEM_ORDER_order_id` int NOT NULL,
  `ADMIN_admin_id` int NOT NULL,
  `SEAT_seat_id` int NOT NULL,
  PRIMARY KEY (`ticket_id`,`ORDER_ITEM_item_no`,`ORDER_ITEM_ORDER_order_id`),
  KEY `fk_TICKETS_SHOW1_idx` (`SHOW_show_id`),
  KEY `fk_TICKETS_ORDER_ITEM1_idx` (`ORDER_ITEM_item_no`,`ORDER_ITEM_ORDER_order_id`),
  KEY `fk_TICKETS_ADMIN1_idx` (`ADMIN_admin_id`),
  KEY `fk_TICKETS_SEAT1_idx` (`SEAT_seat_id`),
  CONSTRAINT `fk_TICKETS_ADMIN1` FOREIGN KEY (`ADMIN_admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `fk_TICKETS_ORDER_ITEM1` FOREIGN KEY (`ORDER_ITEM_item_no`, `ORDER_ITEM_ORDER_order_id`) REFERENCES `order_item` (`item_no`, `ORDER_order_id`),
  CONSTRAINT `fk_TICKETS_SEAT1` FOREIGN KEY (`SEAT_seat_id`) REFERENCES `seat` (`seat_id`),
  CONSTRAINT `fk_TICKETS_SHOW1` FOREIGN KEY (`SHOW_show_id`) REFERENCES `show` (`show_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,300,96,1,1,1,1),(2,300,96,2,1,1,2),(3,260,96,3,2,1,11),(4,260,96,4,2,1,12),(5,200,96,5,3,1,25),(6,200,96,6,4,1,27),(7,200,96,7,5,1,28),(8,200,96,8,5,1,29),(9,200,96,9,5,1,30),(10,200,96,10,5,1,31),(11,200,96,11,6,1,34),(12,200,96,12,6,1,35),(13,200,96,13,6,1,22),(14,200,96,14,6,1,23),(15,300,115,15,7,1,6),(16,300,115,16,7,1,7),(17,260,129,17,8,1,65),(18,260,129,18,8,1,66),(19,200,122,19,9,1,85),(20,200,122,20,10,1,88),(21,200,113,21,11,1,74),(22,200,113,22,11,1,75),(23,200,113,23,11,1,76),(24,200,113,24,11,1,77),(25,200,131,25,12,1,33),(26,200,131,26,12,1,34),(27,200,131,27,12,1,35),(28,200,131,28,12,1,36),(90,200,93,141,91,1,47),(91,200,93,142,91,1,48),(92,200,93,143,91,1,46),(93,200,93,144,92,1,37),(94,200,93,145,92,1,38),(95,260,116,146,93,1,61),(96,200,116,147,93,1,81),(105,300,95,156,96,1,111),(106,300,95,157,96,1,112),(107,300,95,158,96,1,113),(108,200,96,159,97,1,47),(109,200,96,160,97,1,46),(114,260,160,165,100,1,68),(115,260,160,166,100,1,67),(116,300,161,167,101,1,108);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04  3:51:00
