-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbankdb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `bloodrequests`
--

DROP TABLE IF EXISTS `bloodrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodrequests` (
  `RequestID` int NOT NULL AUTO_INCREMENT,
  `RecipientID` int DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `BloodTypeID` int DEFAULT NULL,
  `VolumeMl` int DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  KEY `RecipientID` (`RecipientID`),
  KEY `BloodTypeID` (`BloodTypeID`),
  CONSTRAINT `bloodrequests_ibfk_1` FOREIGN KEY (`RecipientID`) REFERENCES `recipients` (`RecipientID`),
  CONSTRAINT `bloodrequests_ibfk_2` FOREIGN KEY (`BloodTypeID`) REFERENCES `bloodtypes` (`BloodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodrequests`
--

LOCK TABLES `bloodrequests` WRITE;
/*!40000 ALTER TABLE `bloodrequests` DISABLE KEYS */;
INSERT INTO `bloodrequests` VALUES (1,1,'2025-04-01',1,500,'Pending'),(2,2,'2025-04-02',2,400,'Approved'),(3,3,'2025-04-03',3,450,'Pending'),(4,4,'2025-04-04',4,350,'Completed'),(5,5,'2025-04-05',1,500,'Pending'),(6,6,'2025-04-06',2,450,'Approved'),(7,7,'2025-04-07',3,500,'Pending'),(8,8,'2025-04-08',4,400,'Completed'),(9,9,'2025-04-09',1,450,'Pending'),(10,10,'2025-04-10',2,500,'Approved'),(11,11,'2025-04-11',3,400,'Pending'),(12,12,'2025-04-12',4,450,'Completed'),(13,13,'2025-04-13',1,500,'Pending'),(14,14,'2025-04-14',2,450,'Approved'),(15,15,'2025-04-15',3,500,'Pending'),(16,16,'2025-04-16',4,400,'Completed'),(17,17,'2025-04-17',1,450,'Pending'),(18,18,'2025-04-18',2,500,'Approved'),(19,19,'2025-04-19',3,400,'Pending'),(20,20,'2025-04-20',4,450,'Completed'),(21,21,'2025-04-21',1,500,'Pending'),(22,22,'2025-04-22',2,450,'Approved'),(23,23,'2025-04-23',3,500,'Pending'),(24,24,'2025-04-24',4,400,'Completed'),(25,25,'2025-04-25',1,450,'Pending'),(26,26,'2025-04-26',2,500,'Approved'),(27,27,'2025-04-27',3,400,'Pending'),(28,28,'2025-04-28',4,450,'Completed'),(29,29,'2025-04-29',1,500,'Pending'),(30,30,'2025-04-30',2,450,'Approved'),(31,1,'2025-04-01',1,500,'Pending'),(32,2,'2025-04-02',2,400,'Approved'),(33,3,'2025-04-03',3,450,'Pending'),(34,4,'2025-04-04',4,350,'Completed'),(35,5,'2025-04-05',1,500,'Pending'),(36,6,'2025-04-06',2,450,'Approved'),(37,7,'2025-04-07',3,500,'Pending'),(38,8,'2025-04-08',4,400,'Completed'),(39,9,'2025-04-09',1,450,'Pending'),(40,10,'2025-04-10',2,500,'Approved'),(41,11,'2025-04-11',3,400,'Pending'),(42,12,'2025-04-12',4,450,'Completed'),(43,13,'2025-04-13',1,500,'Pending'),(44,14,'2025-04-14',2,450,'Approved'),(45,15,'2025-04-15',3,500,'Pending'),(46,16,'2025-04-16',4,400,'Completed'),(47,17,'2025-04-17',1,450,'Pending'),(48,18,'2025-04-18',2,500,'Approved'),(49,19,'2025-04-19',3,400,'Pending'),(50,20,'2025-04-20',4,450,'Completed'),(51,21,'2025-04-21',1,500,'Pending'),(52,22,'2025-04-22',2,450,'Approved'),(53,23,'2025-04-23',3,500,'Pending'),(54,24,'2025-04-24',4,400,'Completed'),(55,25,'2025-04-25',1,450,'Pending'),(56,26,'2025-04-26',2,500,'Approved'),(57,27,'2025-04-27',3,400,'Pending'),(58,28,'2025-04-28',4,450,'Completed'),(59,29,'2025-04-29',1,500,'Pending'),(60,30,'2025-04-30',2,450,'Approved');
/*!40000 ALTER TABLE `bloodrequests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 16:16:54
