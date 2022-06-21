CREATE DATABASE  IF NOT EXISTS `priv_school` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `priv_school`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: priv_school
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `Assignment_ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `Submission` datetime DEFAULT NULL,
  `Course_ID` int DEFAULT NULL,
  PRIMARY KEY (`Assignment_ID`),
  KEY `BelongsTo_idx` (`Course_ID`),
  CONSTRAINT `Ass_CourseID` FOREIGN KEY (`Course_ID`) REFERENCES `courses` (`Course_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,'java1','individual project basic level','2020-04-30 00:00:00',1),(2,'java2','individual project intermediate level','2020-05-15 00:00:00',1),(3,'java3','individual project advanced level','2020-05-30 00:00:00',1),(4,'java4','team project part 1','2020-06-30 00:00:00',1),(5,'java5','team project part 2','2020-07-30 00:00:00',1),(6,'c1','individual project basic level','2020-04-30 00:00:00',2),(7,'c2','individual project intermediate level','2020-05-15 00:00:00',2),(8,'c3','individual project advanced level','2020-05-30 00:00:00',2),(9,'c4','team project part 1','2020-06-30 00:00:00',2),(10,'c5','team project part 2','2020-07-30 00:00:00',2),(11,'python1','individual project basic level','2020-04-30 00:00:00',3),(12,'python2','individual project intermediate level','2020-05-15 00:00:00',3),(13,'python3','individual project advanced level','2020-05-30 00:00:00',3),(14,'python4','team project part 1','2020-06-30 00:00:00',3),(15,'python5','team project part 2','2020-07-30 00:00:00',3),(16,'java1','individual project basic level','2020-06-30 00:00:00',4),(17,'java2','individual project intermediate level','2020-07-30 00:00:00',4),(18,'java3','individual project advanced level','2020-08-30 00:00:00',4),(19,'java4','team project part 1','2020-09-30 00:00:00',4),(20,'java5','team project part 2','2020-10-30 00:00:00',4),(21,'c1','individual project basic level','2020-06-30 00:00:00',5),(22,'c2','individual project intermediate level','2020-07-30 00:00:00',5),(23,'c3','individual project advanced level','2020-08-30 00:00:00',5),(24,'c4','team project part 1','2020-09-30 00:00:00',5),(25,'c5','team project part 2','2020-10-30 00:00:00',5),(26,'python1','individual project basic level','2020-06-30 00:00:00',6),(27,'python2','individual project intermediate level','2020-07-30 00:00:00',6),(28,'python3','individual project advanced level','2020-08-30 00:00:00',6),(29,'python4','team project part 1','2020-09-30 00:00:00',6),(30,'python5','team project part 2','2020-10-30 00:00:00',6);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21  2:53:01
