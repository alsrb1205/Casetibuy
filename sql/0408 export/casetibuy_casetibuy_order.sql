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
-- Table structure for table `casetibuy_order`
--

DROP TABLE IF EXISTS `casetibuy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casetibuy_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(20) NOT NULL,
  `total_price` int NOT NULL,
  `payment_method` enum('creditCard','kakaoPay') NOT NULL,
  `order_status` enum('pending','completed','canceled') DEFAULT 'pending',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `zipcode` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `detail_address` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_member` (`member_id`),
  CONSTRAINT `fk_order_member` FOREIGN KEY (`member_id`) REFERENCES `casetibuy_member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casetibuy_order`
--

LOCK TABLES `casetibuy_order` WRITE;
/*!40000 ALTER TABLE `casetibuy_order` DISABLE KEYS */;
INSERT INTO `casetibuy_order` VALUES (4,'rkdgusdn',93000,'creditCard','pending','2025-04-07 07:47:23','06035','서울 강남구 가로수길 5 (신사동)','1층'),(5,'rkdgusdn',223000,'kakaoPay','pending','2025-04-07 09:14:09','06035','서울 강남구 가로수길 5 (신사동)','1층');
/*!40000 ALTER TABLE `casetibuy_order` ENABLE KEYS */;
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
