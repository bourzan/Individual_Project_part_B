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
-- Table structure for table `student_assignment`
--

DROP TABLE IF EXISTS `student_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_assignment` (
  `SA_Student` int NOT NULL,
  `SA_Assignment` int NOT NULL,
  `Oral_Mark` int DEFAULT NULL,
  `Total_Mark` int DEFAULT NULL,
  PRIMARY KEY (`SA_Assignment`,`SA_Student`),
  KEY `SA_Student_idx` (`SA_Student`),
  CONSTRAINT `SA_AssignmentID` FOREIGN KEY (`SA_Assignment`) REFERENCES `assignments` (`Assignment_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `SA_StudentID` FOREIGN KEY (`SA_Student`) REFERENCES `students` (`Student_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_assignment`
--

LOCK TABLES `student_assignment` WRITE;
/*!40000 ALTER TABLE `student_assignment` DISABLE KEYS */;
INSERT INTO `student_assignment` VALUES (1,1,NULL,NULL),(3,1,NULL,NULL),(4,1,NULL,NULL),(6,1,NULL,NULL),(8,1,NULL,NULL),(13,1,NULL,NULL),(14,1,NULL,NULL),(17,1,NULL,NULL),(19,1,NULL,NULL),(23,1,NULL,NULL),(27,1,NULL,NULL),(29,1,NULL,NULL),(30,1,NULL,NULL),(32,1,NULL,NULL),(1,2,NULL,NULL),(3,2,NULL,NULL),(4,2,NULL,NULL),(6,2,NULL,NULL),(8,2,NULL,NULL),(13,2,NULL,NULL),(14,2,NULL,NULL),(17,2,NULL,NULL),(19,2,NULL,NULL),(23,2,NULL,NULL),(27,2,NULL,NULL),(29,2,NULL,NULL),(30,2,NULL,NULL),(32,2,NULL,NULL),(1,3,NULL,NULL),(3,3,NULL,NULL),(4,3,NULL,NULL),(6,3,NULL,NULL),(8,3,NULL,NULL),(13,3,NULL,NULL),(14,3,NULL,NULL),(17,3,NULL,NULL),(19,3,NULL,NULL),(23,3,NULL,NULL),(27,3,NULL,NULL),(29,3,NULL,NULL),(30,3,NULL,NULL),(32,3,NULL,NULL),(1,4,NULL,NULL),(3,4,NULL,NULL),(4,4,NULL,NULL),(6,4,NULL,NULL),(8,4,NULL,NULL),(13,4,NULL,NULL),(14,4,NULL,NULL),(17,4,NULL,NULL),(19,4,NULL,NULL),(23,4,NULL,NULL),(27,4,NULL,NULL),(29,4,NULL,NULL),(30,4,NULL,NULL),(32,4,NULL,NULL),(1,5,NULL,NULL),(3,5,NULL,NULL),(4,5,NULL,NULL),(6,5,NULL,NULL),(8,5,NULL,NULL),(13,5,NULL,NULL),(14,5,NULL,NULL),(17,5,NULL,NULL),(19,5,NULL,NULL),(23,5,NULL,NULL),(27,5,NULL,NULL),(29,5,NULL,NULL),(30,5,NULL,NULL),(32,5,NULL,NULL),(2,6,NULL,NULL),(5,6,NULL,NULL),(7,6,NULL,NULL),(8,6,NULL,NULL),(9,6,NULL,NULL),(10,6,NULL,NULL),(12,6,NULL,NULL),(15,6,NULL,NULL),(18,6,NULL,NULL),(20,6,NULL,NULL),(21,6,NULL,NULL),(2,7,NULL,NULL),(5,7,NULL,NULL),(7,7,NULL,NULL),(8,7,NULL,NULL),(9,7,NULL,NULL),(10,7,NULL,NULL),(12,7,NULL,NULL),(15,7,NULL,NULL),(18,7,NULL,NULL),(20,7,NULL,NULL),(21,7,NULL,NULL),(2,8,NULL,NULL),(5,8,NULL,NULL),(7,8,NULL,NULL),(8,8,NULL,NULL),(9,8,NULL,NULL),(10,8,NULL,NULL),(12,8,NULL,NULL),(15,8,NULL,NULL),(18,8,NULL,NULL),(20,8,NULL,NULL),(21,8,NULL,NULL),(2,9,NULL,NULL),(5,9,NULL,NULL),(7,9,NULL,NULL),(8,9,NULL,NULL),(9,9,NULL,NULL),(10,9,NULL,NULL),(12,9,NULL,NULL),(15,9,NULL,NULL),(18,9,NULL,NULL),(20,9,NULL,NULL),(21,9,NULL,NULL),(2,10,NULL,NULL),(5,10,NULL,NULL),(7,10,NULL,NULL),(8,10,NULL,NULL),(9,10,NULL,NULL),(10,10,NULL,NULL),(12,10,NULL,NULL),(15,10,NULL,NULL),(18,10,NULL,NULL),(20,10,NULL,NULL),(21,10,NULL,NULL),(22,11,NULL,NULL),(24,11,NULL,NULL),(28,11,NULL,NULL),(31,11,NULL,NULL),(32,11,NULL,NULL),(40,11,NULL,NULL),(42,11,NULL,NULL),(45,11,NULL,NULL),(22,12,NULL,NULL),(24,12,NULL,NULL),(28,12,NULL,NULL),(31,12,NULL,NULL),(32,12,NULL,NULL),(40,12,NULL,NULL),(42,12,NULL,NULL),(45,12,NULL,NULL),(22,13,NULL,NULL),(24,13,NULL,NULL),(28,13,NULL,NULL),(31,13,NULL,NULL),(32,13,NULL,NULL),(40,13,NULL,NULL),(42,13,NULL,NULL),(45,13,NULL,NULL),(22,14,NULL,NULL),(24,14,NULL,NULL),(28,14,NULL,NULL),(31,14,NULL,NULL),(32,14,NULL,NULL),(40,14,NULL,NULL),(42,14,NULL,NULL),(45,14,NULL,NULL),(22,15,NULL,NULL),(24,15,NULL,NULL),(28,15,NULL,NULL),(31,15,NULL,NULL),(32,15,NULL,NULL),(40,15,NULL,NULL),(42,15,NULL,NULL),(45,15,NULL,NULL),(26,16,NULL,NULL),(36,16,NULL,NULL),(37,16,NULL,NULL),(41,16,NULL,NULL),(43,16,NULL,NULL),(45,16,NULL,NULL),(48,16,NULL,NULL),(50,16,NULL,NULL),(52,16,NULL,NULL),(55,16,NULL,NULL),(56,16,NULL,NULL),(26,17,NULL,NULL),(36,17,NULL,NULL),(37,17,NULL,NULL),(41,17,NULL,NULL),(43,17,NULL,NULL),(45,17,NULL,NULL),(48,17,NULL,NULL),(50,17,NULL,NULL),(52,17,NULL,NULL),(55,17,NULL,NULL),(56,17,NULL,NULL),(26,18,NULL,NULL),(36,18,NULL,NULL),(37,18,NULL,NULL),(41,18,NULL,NULL),(43,18,NULL,NULL),(45,18,NULL,NULL),(48,18,NULL,NULL),(50,18,NULL,NULL),(52,18,NULL,NULL),(55,18,NULL,NULL),(56,18,NULL,NULL),(26,19,NULL,NULL),(36,19,NULL,NULL),(37,19,NULL,NULL),(41,19,NULL,NULL),(43,19,NULL,NULL),(45,19,NULL,NULL),(48,19,NULL,NULL),(50,19,NULL,NULL),(52,19,NULL,NULL),(55,19,NULL,NULL),(56,19,NULL,NULL),(26,20,NULL,NULL),(36,20,NULL,NULL),(37,20,NULL,NULL),(41,20,NULL,NULL),(43,20,NULL,NULL),(45,20,NULL,NULL),(48,20,NULL,NULL),(50,20,NULL,NULL),(52,20,NULL,NULL),(55,20,NULL,NULL),(56,20,NULL,NULL),(5,21,NULL,NULL),(14,21,NULL,NULL),(57,21,NULL,NULL),(58,21,NULL,NULL),(59,21,NULL,NULL),(60,21,NULL,NULL),(61,21,NULL,NULL),(63,21,NULL,NULL),(64,21,NULL,NULL),(5,22,NULL,NULL),(14,22,NULL,NULL),(57,22,NULL,NULL),(58,22,NULL,NULL),(59,22,NULL,NULL),(60,22,NULL,NULL),(61,22,NULL,NULL),(63,22,NULL,NULL),(64,22,NULL,NULL),(5,23,NULL,NULL),(14,23,NULL,NULL),(57,23,NULL,NULL),(58,23,NULL,NULL),(59,23,NULL,NULL),(60,23,NULL,NULL),(61,23,NULL,NULL),(63,23,NULL,NULL),(64,23,NULL,NULL),(5,24,NULL,NULL),(14,24,NULL,NULL),(57,24,NULL,NULL),(58,24,NULL,NULL),(59,24,NULL,NULL),(60,24,NULL,NULL),(61,24,NULL,NULL),(63,24,NULL,NULL),(64,24,NULL,NULL),(5,25,NULL,NULL),(14,25,NULL,NULL),(57,25,NULL,NULL),(58,25,NULL,NULL),(59,25,NULL,NULL),(60,25,NULL,NULL),(61,25,NULL,NULL),(63,25,NULL,NULL),(64,25,NULL,NULL),(26,26,NULL,NULL),(36,26,NULL,NULL),(65,26,NULL,NULL),(66,26,NULL,NULL),(67,26,NULL,NULL),(68,26,NULL,NULL),(69,26,NULL,NULL),(70,26,NULL,NULL),(26,27,NULL,NULL),(36,27,NULL,NULL),(65,27,NULL,NULL),(66,27,NULL,NULL),(67,27,NULL,NULL),(68,27,NULL,NULL),(69,27,NULL,NULL),(70,27,NULL,NULL),(26,28,NULL,NULL),(36,28,NULL,NULL),(65,28,NULL,NULL),(66,28,NULL,NULL),(67,28,NULL,NULL),(68,28,NULL,NULL),(69,28,NULL,NULL),(70,28,NULL,NULL),(26,29,NULL,NULL),(36,29,NULL,NULL),(65,29,NULL,NULL),(66,29,NULL,NULL),(67,29,NULL,NULL),(68,29,NULL,NULL),(69,29,NULL,NULL),(70,29,NULL,NULL),(26,30,NULL,NULL),(36,30,NULL,NULL),(65,30,NULL,NULL),(66,30,NULL,NULL),(67,30,NULL,NULL),(68,30,NULL,NULL),(69,30,NULL,NULL),(70,30,NULL,NULL);
/*!40000 ALTER TABLE `student_assignment` ENABLE KEYS */;
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
