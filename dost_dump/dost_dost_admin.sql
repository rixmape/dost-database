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
-- Table structure for table `dost_admin`
--

DROP TABLE IF EXISTS `dost_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dost_admin` (
  `admin_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dost_admin`
--

LOCK TABLES `dost_admin` WRITE;
/*!40000 ALTER TABLE `dost_admin` DISABLE KEYS */;
INSERT INTO `dost_admin` VALUES (1,'Bob Kiana',NULL,'Galam','bkg1490@gmail.com','09682138311'),(2,'Penelope',NULL,'Batac','pb7756@gmail.com','09360100157'),(3,'Ronaldo',NULL,'Ugalino','ru5369@gmail.com','09911329093'),(4,'Florencia',NULL,'Deen','fd8649@gmail.com','09080585850'),(5,'Rufino Rafael',NULL,'Macatuno','rrm6395@gmail.com','09458425698'),(6,'Bianca Francis',NULL,'Blas','bfb4543@gmail.com','09012161411'),(7,'Karen',NULL,'Babingao','kb9208@gmail.com','09451137110'),(8,'Estelita',NULL,'Pagdilao','ep7789@gmail.com','09495010321'),(9,'Elma Carlo',NULL,'Mania','ecm5457@gmail.com','09572430763'),(10,'Domeng Harold',NULL,'Masungsong','dhm4470@gmail.com','09469027517'),(11,'Peter',NULL,'Adapon','pa8408@gmail.com','09606759095'),(12,'Alexander Aubrey',NULL,'Pansoy','aap9931@gmail.com','09578639029'),(13,'Felipe Lilliane',NULL,'Abot','fla1219@gmail.com','09511341158'),(14,'Mackenzie',NULL,'Romuar','mr5838@gmail.com','09648579064'),(15,'Madeleine',NULL,'Cagayan','mc9242@gmail.com','09688845839'),(16,'Jervis',NULL,'Sali','js4535@gmail.com','09148402396'),(17,'Gerald Agnes',NULL,'Madlangsacay','gam1881@gmail.com','09635608791'),(18,'Faye',NULL,'Cacab','fc6588@gmail.com','09274042710'),(19,'Jessamine Dorothy',NULL,'Yab','jdy9750@gmail.com','09175300924'),(20,'Joanne Nigel',NULL,'Mangalap','jnm1840@gmail.com','09232265524');
/*!40000 ALTER TABLE `dost_admin` ENABLE KEYS */;
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
