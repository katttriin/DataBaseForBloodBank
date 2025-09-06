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
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donors` (
  `DonorID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `BloodTypeID` int DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`DonorID`),
  KEY `BloodTypeID` (`BloodTypeID`),
  CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`BloodTypeID`) REFERENCES `bloodtypes` (`BloodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (1,'Іван','Іванов',1,'1990-01-01','Male','+380671001001','ivan@example.com','Адреса 1'),(2,'Марія','Петрова',2,'1985-05-10','Female','+380671001002','maria@example.com','Адреса 2'),(3,'Олександр','Коваль',3,'1992-07-20','Male','+380671001003','oleksandr@example.com','Адреса 3'),(4,'Анна','Шевченко',4,'1994-02-15','Female','+380671001004','anna@example.com','Адреса 4'),(5,'Дмитро','Сидоренко',1,'1991-03-30','Male','+380671001005','dmytro@example.com','Адреса 5'),(6,'Ірина','Козак',2,'1990-04-25','Female','+380671001006','iryna@example.com','Адреса 6'),(7,'Ярослав','Мельник',3,'1987-09-10','Male','+380671001007','yaroslav@example.com','Адреса 7'),(8,'Юлія','Мартинюк',4,'1993-11-05','Female','+380671001008','yulia@example.com','Адреса 8'),(9,'Андрій','Лисенко',1,'1996-08-12','Male','+380671001009','andriy@example.com','Адреса 9'),(10,'Марина','Чередник',2,'1989-06-18','Female','+380671001010','marina@example.com','Адреса 10'),(11,'Наталія','Павленко',3,'1990-05-15','Female','+380671001011','natalia@example.com','Адреса 11'),(12,'Олег','Дмитренко',4,'1992-10-02','Male','+380671001012','oleg@example.com','Адреса 12'),(13,'Катерина','Іванова',1,'1988-04-21','Female','+380671001013','kateryna@example.com','Адреса 13'),(14,'Сергій','Тимошенко',2,'1995-07-08','Male','+380671001014','serhiy@example.com','Адреса 14'),(15,'Аліна','Романюк',3,'1986-02-02','Female','+380671001015','alina@example.com','Адреса 15'),(16,'Володимир','Нестеренко',4,'1984-11-22','Male','+380671001016','volodymyr@example.com','Адреса 16'),(17,'Маргарита','Левченко',1,'1994-03-17','Female','+380671001017','margarita@example.com','Адреса 17'),(18,'Тарас','Гнатюк',2,'1987-09-19','Male','+380671001018','taras@example.com','Адреса 18'),(19,'Вікторія','Островська',3,'1991-08-28','Female','+380671001019','viktoriya@example.com','Адреса 19'),(20,'Станіслав','Кравчук',4,'1983-12-13','Male','+380671001020','stanislav@example.com','Адреса 20'),(21,'Марія','Ніколаєва',1,'1992-02-18','Female','+380671001021','maria_n@example.com','Адреса 21'),(22,'Роман','Шкуренко',2,'1994-03-30','Male','+380671001022','roman@example.com','Адреса 22'),(23,'Лілія','Петренко',3,'1990-05-20','Female','+380671001023','liliya@example.com','Адреса 23'),(24,'Ігор','Чорний',4,'1992-09-01','Male','+380671001024','igor@example.com','Адреса 24'),(25,'Тетяна','Гордієнко',1,'1993-01-10','Female','+380671001025','tetiana@example.com','Адреса 25'),(26,'Олексій','Захарченко',2,'1991-11-14','Male','+380671001026','oleksiy@example.com','Адреса 26'),(27,'Софія','Куліш',3,'1992-10-22','Female','+380671001027','sofia@example.com','Адреса 27'),(28,'Яна','Данилова',4,'1990-07-13','Female','+380671001028','yana@example.com','Адреса 28'),(29,'Назар','Остапенко',1,'1995-04-06','Male','+380671001029','nazar@example.com','Адреса 29'),(30,'Світлана','Шмідт',2,'1993-02-27','Female','+380671001030','svitlana@example.com','Адреса 30'),(31,'Іван','Іванов',1,'1990-01-01','Male','+380671001001','ivan@example.com','Адреса 1'),(32,'Марія','Петрова',2,'1985-05-10','Female','+380671001002','maria@example.com','Адреса 2'),(33,'Олександр','Коваль',3,'1992-07-20','Male','+380671001003','oleksandr@example.com','Адреса 3'),(34,'Анна','Шевченко',4,'1994-02-15','Female','+380671001004','anna@example.com','Адреса 4'),(35,'Дмитро','Сидоренко',1,'1991-03-30','Male','+380671001005','dmytro@example.com','Адреса 5'),(36,'Ірина','Козак',2,'1990-04-25','Female','+380671001006','iryna@example.com','Адреса 6'),(37,'Ярослав','Мельник',3,'1987-09-10','Male','+380671001007','yaroslav@example.com','Адреса 7'),(38,'Юлія','Мартинюк',4,'1993-11-05','Female','+380671001008','yulia@example.com','Адреса 8'),(39,'Андрій','Лисенко',1,'1996-08-12','Male','+380671001009','andriy@example.com','Адреса 9'),(40,'Марина','Чередник',2,'1989-06-18','Female','+380671001010','marina@example.com','Адреса 10'),(41,'Наталія','Павленко',3,'1990-05-15','Female','+380671001011','natalia@example.com','Адреса 11'),(42,'Олег','Дмитренко',4,'1992-10-02','Male','+380671001012','oleg@example.com','Адреса 12'),(43,'Катерина','Іванова',1,'1988-04-21','Female','+380671001013','kateryna@example.com','Адреса 13'),(44,'Сергій','Тимошенко',2,'1995-07-08','Male','+380671001014','serhiy@example.com','Адреса 14'),(45,'Аліна','Романюк',3,'1986-02-02','Female','+380671001015','alina@example.com','Адреса 15'),(46,'Володимир','Нестеренко',4,'1984-11-22','Male','+380671001016','volodymyr@example.com','Адреса 16'),(47,'Маргарита','Левченко',1,'1994-03-17','Female','+380671001017','margarita@example.com','Адреса 17'),(48,'Тарас','Гнатюк',2,'1987-09-19','Male','+380671001018','taras@example.com','Адреса 18'),(49,'Вікторія','Островська',3,'1991-08-28','Female','+380671001019','viktoriya@example.com','Адреса 19'),(50,'Станіслав','Кравчук',4,'1983-12-13','Male','+380671001020','stanislav@example.com','Адреса 20'),(51,'Марія','Ніколаєва',1,'1992-02-18','Female','+380671001021','maria_n@example.com','Адреса 21'),(52,'Роман','Шкуренко',2,'1994-03-30','Male','+380671001022','roman@example.com','Адреса 22'),(53,'Лілія','Петренко',3,'1990-05-20','Female','+380671001023','liliya@example.com','Адреса 23'),(54,'Ігор','Чорний',4,'1992-09-01','Male','+380671001024','igor@example.com','Адреса 24'),(55,'Тетяна','Гордієнко',1,'1993-01-10','Female','+380671001025','tetiana@example.com','Адреса 25'),(56,'Олексій','Захарченко',2,'1991-11-14','Male','+380671001026','oleksiy@example.com','Адреса 26'),(57,'Софія','Куліш',3,'1992-10-22','Female','+380671001027','sofia@example.com','Адреса 27'),(58,'Яна','Данилова',4,'1990-07-13','Female','+380671001028','yana@example.com','Адреса 28'),(59,'Назар','Остапенко',1,'1995-04-06','Male','+380671001029','nazar@example.com','Адреса 29'),(60,'Світлана','Шмідт',2,'1993-02-27','Female','+380671001030','svitlana@example.com','Адреса 30');
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 16:16:55
