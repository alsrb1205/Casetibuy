-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: alsrb1205-db.c1uagmqqwxda.ap-northeast-2.rds.amazonaws.com    Database: casetibuy
-- ------------------------------------------------------
-- Server version	8.0.40

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `casetibuy_order_detail`
--

DROP TABLE IF EXISTS `casetibuy_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casetibuy_order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int NOT NULL,
  `unit_price` int NOT NULL,
  `color` varchar(30) NOT NULL,
  `case_type` varchar(30) NOT NULL,
  `product_image` varchar(200) DEFAULT NULL,
  `kinds` varchar(30) NOT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `fk_product` (`product_id`),
  KEY `fk_order` (`order_id`),
  CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `casetibuy_order` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `casetibuy_product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casetibuy_order_detail`
--

LOCK TABLES `casetibuy_order_detail` WRITE;
/*!40000 ALTER TABLE `casetibuy_order_detail` DISABLE KEYS */;
INSERT INTO `casetibuy_order_detail` VALUES (3,4,4,'Tom Character Case',1,93000,'black','임팩트 케이스','http://43.200.171.0:9000/upload_files\\1742627987463_481857006iphone16p_tom_and_jerry_case_impact_color_black1.webp','iphone'),(4,5,17,'Maison Kitsuné Autumn Red Case',1,122000,'black','맥세이프 호환 임팩트 링 스탠드 케이스','http://43.200.171.0:9000/upload_files\\1742631070323_349465908iphone16p_maison_kitsune_case_ring_color_black1.webp','iphone'),(5,5,4,'Tom Character Case',1,101000,'black','맥세이프 호환 미러 케이스','http://43.200.171.0:9000/upload_files\\1742627987470_129600102iphone16p_tom_and_jerry_case_mirror_color_black1.webp','iphone');
/*!40000 ALTER TABLE `casetibuy_order_detail` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 16:01:40
