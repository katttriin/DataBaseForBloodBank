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
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood` (
  `BloodID` int NOT NULL AUTO_INCREMENT,
  `DonorID` int DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `RhFactor` char(1) DEFAULT NULL,
  `CollectionDate` date DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BloodID`),
  KEY `DonorID` (`DonorID`),
  CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`DonorID`) REFERENCES `donors` (`DonorID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES (1,1,'A','+','2025-03-01','2025-06-01','Available'),(2,2,'B','-','2025-03-02','2025-06-02','Available'),(3,3,'O','+','2025-03-03','2025-06-03','Available'),(4,4,'AB','-','2025-03-04','2025-06-04','Available'),(5,5,'A','+','2025-03-05','2025-06-05','Reserved'),(6,6,'B','+','2025-03-06','2025-06-06','Available'),(7,7,'O','-','2025-03-07','2025-06-07','Used'),(8,8,'AB','+','2025-03-08','2025-06-08','Available'),(9,9,'A','-','2025-03-09','2025-06-09','Available'),(10,10,'B','+','2025-03-10','2025-06-10','Available'),(11,11,'O','+','2025-03-11','2025-06-11','Available'),(12,12,'AB','-','2025-03-12','2025-06-12','Used'),(13,13,'A','+','2025-03-13','2025-06-13','Reserved'),(14,14,'B','-','2025-03-14','2025-06-14','Available'),(15,15,'O','+','2025-03-15','2025-06-15','Available'),(16,16,'AB','+','2025-03-16','2025-06-16','Available'),(17,17,'A','-','2025-03-17','2025-06-17','Available'),(18,18,'B','+','2025-03-18','2025-06-18','Available'),(19,19,'O','-','2025-03-19','2025-06-19','Available'),(20,20,'AB','-','2025-03-20','2025-06-20','Reserved'),(21,21,'A','+','2025-03-21','2025-06-21','Available'),(22,22,'B','-','2025-03-22','2025-06-22','Used'),(23,23,'O','+','2025-03-23','2025-06-23','Available'),(24,24,'AB','+','2025-03-24','2025-06-24','Available'),(25,25,'A','-','2025-03-25','2025-06-25','Available'),(26,26,'B','+','2025-03-26','2025-06-26','Available'),(27,27,'O','-','2025-03-27','2025-06-27','Available'),(28,28,'AB','+','2025-03-28','2025-06-28','Available'),(29,29,'A','-','2025-03-29','2025-06-29','Available'),(30,30,'B','+','2025-03-30','2025-06-30','Available'),(31,1,'A','+','2025-03-01','2025-06-01','Available'),(32,2,'B','-','2025-03-02','2025-06-02','Available'),(33,3,'O','+','2025-03-03','2025-06-03','Available'),(34,4,'AB','-','2025-03-04','2025-06-04','Available'),(35,5,'A','+','2025-03-05','2025-06-05','Reserved'),(36,6,'B','+','2025-03-06','2025-06-06','Available'),(37,7,'O','-','2025-03-07','2025-06-07','Used'),(38,8,'AB','+','2025-03-08','2025-06-08','Available'),(39,9,'A','-','2025-03-09','2025-06-09','Available'),(40,10,'B','+','2025-03-10','2025-06-10','Available'),(41,11,'O','+','2025-03-11','2025-06-11','Available'),(42,12,'AB','-','2025-03-12','2025-06-12','Available'),(43,13,'A','+','2025-03-13','2025-06-13','Reserved'),(44,14,'B','-','2025-03-14','2025-06-14','Available'),(45,15,'O','+','2025-03-15','2025-06-15','Available'),(46,16,'AB','+','2025-03-16','2025-06-16','Available'),(47,17,'A','-','2025-04-17','2025-06-17','Available'),(48,18,'B','+','2025-04-18','2025-06-18','Available'),(49,19,'O','-','2025-03-19','2025-06-19','Available'),(50,20,'AB','-','2025-03-20','2025-06-20','Reserved'),(51,21,'A','+','2025-06-21','2025-06-21','Available'),(52,22,'B','-','2025-03-22','2025-06-22','Used'),(53,23,'O','+','2025-06-23','2025-06-23','Available'),(54,24,'AB','+','2025-03-24','2025-06-24','Available'),(55,25,'A','-','2025-06-25','2025-06-25','Available'),(56,26,'B','+','2025-03-26','2025-06-26','Available'),(57,27,'O','-','2025-03-27','2025-06-27','Available'),(58,28,'AB','+','2025-03-28','2025-06-28','Available'),(59,29,'A','-','2025-03-29','2025-06-29','Available'),(60,30,'B','+','2025-03-30','2025-06-30','Available');
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
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
