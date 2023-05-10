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
INSERT INTO `course` VALUES (1,'BTVTED Major in Drafting Technology',NULL),(2,'B Elementary Education',NULL),(3,'BS Information Technology Major in Animation',NULL),(4,'BTVTED Major in Agricultural Crop Production',NULL),(5,'BS Electrical Engineering',NULL),(6,'BSBA Microfinance',NULL),(7,'BS Mechanical Engineering',NULL),(8,'B Technology and Livelihood Education',NULL),(9,'BS Nursing',NULL),(10,'BS Electronics Technology',NULL),(11,'BS Electrical Technology',NULL),(12,'B Public Administration',NULL),(13,'AB English Language',NULL),(14,'B Secondary Education',NULL),(15,'B Industrial Design',NULL),(16,'B Agricultural Technology',NULL),(17,'AB Performing Arts Theater',NULL),(18,'B Secondary Education Major in Math',NULL),(19,'BS Agribusiness',NULL),(20,'BS Forestry',NULL),(21,'BSBA Major in Microfinance',NULL),(22,'AB Broadcasting',NULL),(23,'B Arts in Literature',NULL),(24,'AB Communication',NULL),(25,'BS Chemical Engineering',NULL),(26,'B Secondary Education Major in Social Studies',NULL),(27,'BSBA Major in Operations Management',NULL),(28,'BS Information Technology',NULL),(29,'BS Entrepreneurship',NULL),(30,'BS Automotive Technology',NULL),(31,'B Secondary Education Major in Filipino',NULL),(32,'BS Electronics Engineering',NULL),(33,'BS Agriculture',NULL),(34,'AB Peace Studies',NULL),(35,'B Secondary Education Major in English',NULL),(36,'BSBA Major in Financial Management',NULL),(37,'BS Computer Engineering',NULL),(38,'BS Meteorology',NULL),(39,'BS Food Technology',NULL),(40,'BS Psychology',NULL),(41,'BSBA Major in Marketing Management',NULL),(42,'BS Management',NULL),(43,'BTVTED Major in Animal Production',NULL),(44,'B Early Childhood Education',NULL),(45,'BS Mechanical Technology',NULL),(46,'AB Philosophy',NULL),(47,'BS Biology',NULL),(48,'BS Accountancy',NULL),(49,'BS Information System',NULL),(50,'BS Social Work',NULL),(51,'BS Civil Engineering',NULL),(52,'BTVTED Major in Electrical Technology',NULL),(53,'BS Mining Engineering',NULL),(54,'BS Fisheries',NULL),(55,'BTVTED Major in Food Service Management',NULL),(56,'BS Economics',NULL),(57,'BS Chemistry',NULL),(58,'BS Computer Science',NULL),(59,'AB Sociology',NULL),(60,'BS Agricultural and Biosystems Engineering',NULL),(61,'BS Architecture',NULL),(62,'BS in Exercise and Sports Sciences',NULL),(63,'B Culture and Arts Education',NULL),(64,'BS Geodetic Engineering',NULL),(65,'BS Civil Technology',NULL),(66,'AB Journalism',NULL),(67,'BS MechanicalTechnology',NULL),(68,'BSBA Major in Human Resource Management',NULL),(69,'AB Political Science',NULL),(70,'B Physical Education',NULL),(71,'BTVTED Major in Garments Fashion and Design',NULL);
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

-- Dump completed on 2023-05-10 12:23:32
