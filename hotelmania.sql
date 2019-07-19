-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `hotel_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `tot_room` varchar(20) NOT NULL,
  `adults` varchar(20) NOT NULL,
  `childrens` varchar(20) NOT NULL,
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('100001','sayed','sayed@yahoo.com','aaa','abc','1234','1','2','1'),('100001','aaa','sa@yahoo.com','asd','fds','2134','2','4','2'),('100001','sayed','aa','dd@d','abc','12','2','2','1'),('100001','sayed','aa','dd@d','abc','12','2','2','1'),('100001','sayed','aa','dd@d','abc','12','2','2','1'),('100001','sayed','aa','dd@d','abc','12','2','2','1');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `hotel_id` varchar(20) NOT NULL,
  `features` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES ('100001','Free wifi','You can get wifi in long range'),('100001','Free Parking','Lot of space for car parking '),('100001','Gardenning','Free space and garden are surrounded ');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_info`
--

DROP TABLE IF EXISTS `hotel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_info` (
  `hotel_id` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `hotel_name` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_info`
--

LOCK TABLES `hotel_info` WRITE;
/*!40000 ALTER TABLE `hotel_info` DISABLE KEYS */;
INSERT INTO `hotel_info` VALUES (100001,'Images/Hotel/1.png','Mermaid Beach Resort, Cox\'s Bazar','Cox\'s Bazar'),(100002,'Images/Hotel/2.png','Honey Moon FIJI Resorts','St. Martin\'s Island'),(100003,'Images/Hotel/3.png','Best Western Plus Heritage','Hong Kong'),(100004,'Images/Hotel/4.png','Royal Sea Pearl Beach Resort & Spa','Cox\'s Bazar'),(100005,'Images/Hotel/5.png','Seagull Hotel','Cox\'s Bazar'),(100006,'Images/Hotel/6.png','Cox\'s Bazar Surf Club','Cox\'s Bazar'),(100007,'Images/Hotel/7.png','White Orchid','Flagler Beach'),(100008,'Images/Hotel/8.png','Fu-Wang Dominous Resort','Cox\'s Bazar');
/*!40000 ALTER TABLE `hotel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_galary`
--

DROP TABLE IF EXISTS `photo_galary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_galary` (
  `hotel_id` varchar(20) NOT NULL,
  `img_dir1` varchar(80) NOT NULL,
  `img_dir2` varchar(80) NOT NULL,
  `img_dir3` varchar(80) NOT NULL,
  `img_dir4` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_galary`
--

LOCK TABLES `photo_galary` WRITE;
/*!40000 ALTER TABLE `photo_galary` DISABLE KEYS */;
INSERT INTO `photo_galary` VALUES ('100001','Images/MBR/1.jpg','Images/MBR/2.jpg','Images/MBR/3.jpg','Images/MBR/4.jpg'),('100001','Images/MBR/5.jpg','Images/MBR/6.jpg','Images/MBR/7.jpg','Images/MBR/8.jpg');
/*!40000 ALTER TABLE `photo_galary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `hotel_id` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `fits` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('100001','12054',3,'1 Single 1 Double bed',1500),('100002','12135',4,'2 double bed',1800),('100001','12954',2,'2 single bed',1000),('100001','12110',5,'2 Double 1 Single bed',2000);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'Sayed Khan','sayedhossainkhan36@yahoo.com','e2fc714c4727ee9395f324cd2e7f331f'),(0,'sayed','sayedkhan11@yahoo.com','900150983cd24fb0d6963f7d28e17f72'),(0,'sayed','sayedhossainkhan36@yahoo.com','47bce5c74f589f4867dbd57e9ca9f808'),(0,'shk','aaa@yahoo.com','900150983cd24fb0d6963f7d28e17f72');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-10 11:59:03
