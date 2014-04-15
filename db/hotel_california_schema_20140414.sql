CREATE DATABASE  IF NOT EXISTS `hotel_booking` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotel_booking`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: localhost    Database: hotel_booking
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
INSERT INTO `billing_addresses` VALUES (1,'','','','','','1ba320a6-3f8e-494f-a316-2a11a9a11cb6','2014-04-09 00:43:08','2014-04-09 00:43:08','JASON LU'),(2,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-12 20:10:10','2014-04-14 06:44:08','JASON LU'),(3,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:44:08','2014-04-14 06:49:10','JASON LU'),(4,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:49:10','2014-04-14 06:49:57','JASON LU'),(5,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:49:57','2014-04-14 06:51:02','JASON LU'),(6,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:51:02','2014-04-14 06:52:00','JASON LU'),(7,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:52:00','2014-04-14 06:52:15','JASON LU'),(8,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:52:15','2014-04-14 06:52:36','JASON LU'),(9,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:52:36','2014-04-14 06:53:03','JASON LU'),(10,'319 Tappan Street','','Brookline','Masschusetts','02445',NULL,'2014-04-14 06:53:03','2014-04-14 06:55:31','JASON LU'),(11,'319 Tappan Street','','Brookline','Masschusetts','02445','fc2813c3-2d99-4e34-978f-56a5cff14d7b','2014-04-14 06:55:31','2014-04-14 06:55:31','JASON LU'),(12,'319 Tappan Street','','Brookline','Masschusetts','02445','911408b0-4e37-41b1-8f0d-064e61e60d49','2014-04-14 07:15:17','2014-04-14 07:15:17','JASON LU'),(13,'319 Tappan Street','','Brookline','Masschusetts','02445','a5cc47cb-fc47-48cf-9436-8efa80b84b68','2014-04-14 07:36:00','2014-04-14 07:36:00','JASON LU'),(14,'319 Tappan Street','','Brookline','Masschusetts','02445','5690a12a-a1a3-4623-8a27-dca6838fd68b','2014-04-14 07:37:27','2014-04-14 07:37:27','JASON LU'),(15,'319 Tappan Street','','Brookline','Masschusetts','02445','3c7e9bba-0551-4a67-b81e-fef48cd9d907','2014-04-14 07:41:03','2014-04-14 07:41:03','JASON LU'),(16,'319 Tappan Street','','Brookline','Masschusetts','02445','5385d598-e9ba-4503-afb1-fff29800fcd3','2014-04-14 07:41:19','2014-04-14 07:41:19','JASON LU'),(17,'319 Tappan Street','','Brookline','Masschusetts','02445','07ce139e-187d-4203-b184-4bd5272b8500','2014-04-14 07:42:10','2014-04-14 07:42:10','JASON LU'),(18,'319 Tappan Street','','Brookline','Masschusetts','02445','525f8aa3-c1b7-430b-89b5-64e76ce4c77d','2014-04-14 07:43:12','2014-04-14 07:43:12','JASON LU'),(19,'','','','','','a627723d-d8c3-4643-9120-68c0fe921e39','2014-04-14 07:58:24','2014-04-14 07:58:24','JASON LU');
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'1000065535','2014-04-09 00:37:27','2014-04-09 00:37:27','john@smith.com','7653e9fdedd011be9195e0d1c56aa84aa9e8f081','37a3a2b6-b420-47ba-9d43-be5a04f321a0'),(2,'1000065536','2014-04-12 20:09:53','2014-04-12 20:09:53','jasonl.biz@gmail.com','7653e9fdedd011be9195e0d1c56aa84aa9e8f081','dc829709-1e8c-4cc2-92a7-b4485291e295');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guests_on_customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Jason','Lu',1,'2014-04-09 00:37:27','2014-04-09 00:37:27'),(2,'Jason','Lu',2,'2014-04-12 20:09:53','2014-04-12 20:09:53');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bed_type` varchar(255) DEFAULT NULL,
  `base_rate` float DEFAULT NULL,
  `non_smoking` tinyint(1) DEFAULT NULL,
  `pets_welcome` tinyint(1) DEFAULT NULL,
  `family_welcome` tinyint(1) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `tags` text,
  `capacity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (1,'Standard Suite (King size Bed)','King size',100,1,0,0,1,'',2,'2014-04-01 22:26:47','2014-04-01 22:26:47',NULL),(2,'Standard Suite (Two queen size bed)','Queen size',100,1,0,0,2,'',2,'2014-04-01 22:30:23','2014-04-01 22:30:23',NULL);
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140325220907'),('20140325221117'),('20140325221424'),('20140325222006'),('20140325223045'),('20140325223047'),('20140325232441'),('20140325232752'),('20140401221444'),('20140401221921'),('20140401225502'),('20140401230533'),('20140401232645'),('20140406194515'),('20140408033710'),('20140408035307'),('20140408222655'),('20140409000259'),('20140409002645'),('20140409002659'),('20140409004007'),('20140414050759'),('20140414051137'),('20140414063136'),('20140414075445'),('20140414174958');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `should_checkin_at` datetime DEFAULT NULL,
  `should_checkout_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_visits_on_customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,1,NULL,'2014-04-01 00:00:00',NULL,'2014-04-09 00:43:07','2014-04-09 00:43:07',NULL,NULL,NULL,NULL,NULL),(2,2,NULL,'2014-04-12 00:00:00',NULL,'2014-04-12 20:10:10','2014-04-12 20:10:10',NULL,NULL,NULL,NULL,NULL),(11,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:15:16','2014-04-14 07:15:16',NULL,NULL,NULL,NULL,NULL),(12,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:36:00','2014-04-14 07:36:00',NULL,NULL,NULL,NULL,NULL),(13,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:37:27','2014-04-14 07:37:27',NULL,NULL,NULL,NULL,NULL),(14,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:41:03','2014-04-14 07:41:03',NULL,NULL,NULL,NULL,NULL),(15,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:41:19','2014-04-14 07:41:19',NULL,NULL,NULL,NULL,NULL),(16,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:42:10','2014-04-14 07:42:10',NULL,NULL,NULL,NULL,NULL),(17,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:43:12','2014-04-14 07:43:12',NULL,NULL,NULL,NULL,NULL),(18,2,NULL,'2014-04-01 00:00:00',NULL,'2014-04-14 07:58:24','2014-04-14 07:58:24',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `credit_card_no` varchar(255) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_payments_on_customer_id` (`customer_id`),
  KEY `index_payments_on_visit_id` (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('07ce139e-187d-4203-b184-4bd5272b8500',NULL,16,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:42:10','2014-04-14 07:43:12',NULL,NULL,NULL),('1ba320a6-3f8e-494f-a316-2a11a9a11cb6',1,1,NULL,'1111-1111-1111-1111',NULL,NULL,'2014-04-09 00:43:08','2014-04-09 00:43:08',NULL,NULL,NULL),('3c7e9bba-0551-4a67-b81e-fef48cd9d907',NULL,14,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:41:03','2014-04-14 07:41:19',NULL,NULL,NULL),('525f8aa3-c1b7-430b-89b5-64e76ce4c77d',NULL,17,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:43:12','2014-04-14 07:50:06',NULL,NULL,NULL),('5385d598-e9ba-4503-afb1-fff29800fcd3',NULL,15,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:41:19','2014-04-14 07:42:10',NULL,NULL,NULL),('5690a12a-a1a3-4623-8a27-dca6838fd68b',NULL,13,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:37:27','2014-04-14 07:41:03',NULL,NULL,NULL),('911408b0-4e37-41b1-8f0d-064e61e60d49',NULL,11,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:15:17','2014-04-14 07:36:00',NULL,NULL,NULL),('a5cc47cb-fc47-48cf-9436-8efa80b84b68',NULL,12,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:36:00','2014-04-14 07:37:27',NULL,NULL,NULL),('a627723d-d8c3-4643-9120-68c0fe921e39',2,18,NULL,'1000000000000001',NULL,NULL,'2014-04-14 07:58:24','2014-04-14 07:58:24',NULL,NULL,NULL),('fc2813c3-2d99-4e34-978f-56a5cff14d7b',NULL,2,NULL,'1000000000000001',NULL,NULL,'2014-04-12 20:10:10','2014-04-14 07:15:17',NULL,NULL,NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupancies`
--

DROP TABLE IF EXISTS `occupancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `occupancies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupancies`
--

LOCK TABLES `occupancies` WRITE;
/*!40000 ALTER TABLE `occupancies` DISABLE KEYS */;
INSERT INTO `occupancies` VALUES (1,1,18,18,'2014-04-01','2014-04-14 07:58:24','2014-04-14 07:58:24');
/*!40000 ALTER TABLE `occupancies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_rules`
--

DROP TABLE IF EXISTS `discount_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rules` varchar(255) DEFAULT NULL,
  `percentage_rate` int(11) DEFAULT NULL,
  `fixed_rate` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_rules`
--

LOCK TABLES `discount_rules` WRITE;
/*!40000 ALTER TABLE `discount_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_number` varchar(255) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `bed_type` varchar(255) DEFAULT NULL,
  `base_rate` float DEFAULT NULL,
  `non_smoking` tinyint(1) DEFAULT NULL,
  `pets_welcome` tinyint(1) DEFAULT NULL,
  `family_welcome` tinyint(1) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `tags` text,
  `capacity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_url` text,
  PRIMARY KEY (`id`),
  KEY `index_rooms_on_room_type_id` (`room_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'201',1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-04-01 23:04:18','2014-04-01 23:12:25',NULL),(2,'202',2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-04-01 23:06:34','2014-04-01 23:12:09',NULL),(3,'203',1,' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-14 13:55:29
