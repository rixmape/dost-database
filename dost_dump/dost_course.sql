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
INSERT INTO `course` VALUES (1,'BS Entrepreneurship',NULL),(2,'BTVTED Major in Electrical Technology',NULL),(3,'BS Fisheries',NULL),(4,'B Secondary Education Major in English',NULL),(5,'BTVTED Major in Garments Fashion and Design',NULL),(6,'BS Psychology',NULL),(7,'AB Sociology',NULL),(8,'B Early Childhood Education',NULL),(9,'BS Nursing',NULL),(10,'BSBA Major in Financial Management',NULL),(11,'B Agricultural Technology',NULL),(12,'BS Electronics Technology',NULL),(13,'BS Biology',NULL),(14,'BS Social Work',NULL),(15,'BS Architecture',NULL),(16,'B Secondary Education Major in Social Studies',NULL),(17,'BS Agricultural and Biosystems Engineering',NULL),(18,'BS Information Technology Major in Animation',NULL),(19,'BS Automotive Technology',NULL),(20,'BS Electronics Engineering',NULL),(21,'BS Food Technology',NULL),(22,'AB Broadcasting',NULL),(23,'BS Information Technology',NULL),(24,'BTVTED Major in Animal Production',NULL),(25,'AB Journalism',NULL),(26,'B Secondary Education Major in Math',NULL),(27,'BS Civil Technology',NULL),(28,'AB English Language',NULL),(29,'B Public Administration',NULL),(30,'BS Meteorology',NULL),(31,'BSBA Major in Human Resource Management',NULL),(32,'BS Mechanical Technology',NULL),(33,'BS Forestry',NULL),(34,'AB Peace Studies',NULL),(35,'BS Accountancy',NULL),(36,'BSBA Major in Marketing Management',NULL),(37,'BS Agriculture',NULL),(38,'AB Communication',NULL),(39,'BSBA Major in Operations Management',NULL),(40,'B Secondary Education Major in Filipino',NULL),(41,'BTVTED Major in Agricultural Crop Production',NULL),(42,'BS Electrical Technology',NULL),(43,'AB Political Science',NULL),(44,'B Secondary Education',NULL),(45,'B Culture and Arts Education',NULL),(46,'BTVTED Major in Food Service Management',NULL),(47,'BS Economics',NULL),(48,'B Elementary Education',NULL),(49,'BS Computer Engineering',NULL),(50,'BS Mining Engineering',NULL),(51,'BSBA Microfinance',NULL),(52,'BS Mechanical Engineering',NULL),(53,'BSBA Major in Microfinance',NULL),(54,'AB Performing Arts Theater',NULL),(55,'BS Chemical Engineering',NULL),(56,'BS Civil Engineering',NULL),(57,'BS MechanicalTechnology',NULL),(58,'B Technology and Livelihood Education',NULL),(59,'B Arts in Literature',NULL),(60,'BS Information System',NULL),(61,'BS Chemistry',NULL),(62,'BS Management',NULL),(63,'BS Electrical Engineering',NULL),(64,'B Industrial Design',NULL),(65,'B Physical Education',NULL),(66,'BS Agribusiness',NULL),(67,'BS Computer Science',NULL),(68,'BS Geodetic Engineering',NULL),(69,'BTVTED Major in Drafting Technology',NULL),(70,'BS in Exercise and Sports Sciences',NULL),(71,'AB Philosophy',NULL);
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

-- Dump completed on 2023-05-09  8:23:41
