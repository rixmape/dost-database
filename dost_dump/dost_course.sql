-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dost
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'B Secondary Education Major in Math',NULL),(2,'BSBA Major in Microfinance',NULL),(3,'BSBA Major in Operations Management',NULL),(4,'B Culture and Arts Education',NULL),(5,'BS Electronics Technology',NULL),(6,'BS Information Technology',NULL),(7,'B Public Administration',NULL),(8,'B Elementary Education',NULL),(9,'B Arts in Literature',NULL),(10,'AB Broadcasting',NULL),(11,'AB Peace Studies',NULL),(12,'BS Forestry',NULL),(13,'BS Automotive Technology',NULL),(14,'BS Fisheries',NULL),(15,'BS Agricultural and Biosystems Engineering',NULL),(16,'AB Performing Arts Theater',NULL),(17,'BTVTED Major in Garments Fashion and Design',NULL),(18,'BS Management',NULL),(19,'BSBA Major in Financial Management',NULL),(20,'B Secondary Education Major in English',NULL),(21,'BS Entrepreneurship',NULL),(22,'AB English Language',NULL),(23,'AB Political Science',NULL),(24,'BS Meteorology',NULL),(25,'AB Communication',NULL),(26,'BS Psychology',NULL),(27,'B Industrial Design',NULL),(28,'BS Electrical Engineering',NULL),(29,'BS Food Technology',NULL),(30,'B Early Childhood Education',NULL),(31,'BS Agriculture',NULL),(32,'BS Chemical Engineering',NULL),(33,'AB Sociology',NULL),(34,'BTVTED Major in Animal Production',NULL),(35,'BSBA Major in Marketing Management',NULL),(36,'BS Mining Engineering',NULL),(37,'BS Nursing',NULL),(38,'BS Social Work',NULL),(39,'AB Journalism',NULL),(40,'BTVTED Major in Food Service Management',NULL),(41,'BS Mechanical Engineering',NULL),(42,'BTVTED Major in Agricultural Crop Production',NULL),(43,'BS Architecture',NULL),(44,'B Secondary Education Major in Social Studies',NULL),(45,'B Technology and Livelihood Education',NULL),(46,'BS Computer Science',NULL),(47,'BS Accountancy',NULL),(48,'BS in Exercise and Sports Sciences',NULL),(49,'B Agricultural Technology',NULL),(50,'BTVTED Major in Electrical Technology',NULL),(51,'BS Electronics Engineering',NULL),(52,'BS Electrical Technology',NULL),(53,'BS Economics',NULL),(54,'BS Mechanical Technology',NULL),(55,'BSBA Major in Human Resource Management',NULL),(56,'BS Agribusiness',NULL),(57,'BTVTED Major in Drafting Technology',NULL),(58,'BS Chemistry',NULL),(59,'BS Information System',NULL),(60,'B Secondary Education',NULL),(61,'BS Geodetic Engineering',NULL),(62,'BS Civil Engineering',NULL),(63,'BS MechanicalTechnology',NULL),(64,'BS Information Technology Major in Animation',NULL),(65,'B Physical Education',NULL),(66,'BSBA Microfinance',NULL),(67,'B Secondary Education Major in Filipino',NULL),(68,'BS Civil Technology',NULL),(69,'BS Biology',NULL),(70,'BS Computer Engineering',NULL),(71,'AB Philosophy',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-08 22:06:00
