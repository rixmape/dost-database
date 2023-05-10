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
INSERT INTO `dost_admin` VALUES (1,'Reign Alma',NULL,'Manalastas','ram3559@gmail.com','09507270871'),(2,'Gabriel Narciso',NULL,'Tela','gnt6235@gmail.com','09156495124'),(3,'Petra Dionisia',NULL,'Puruganan','pdp3462@gmail.com','09436492449'),(4,'Michaela Wilfred',NULL,'Gumapas','mwg4853@gmail.com','09519370448'),(5,'Norberto',NULL,'Cabebe','nc2179@gmail.com','09588539977'),(6,'Ronnie Queenie',NULL,'Calupid','rqc1980@gmail.com','09746547068'),(7,'Ambrose',NULL,'Timbas','at5107@gmail.com','09532750500'),(8,'Dustin',NULL,'Baquiran','db7037@gmail.com','09932592153'),(9,'Luisito Mylene',NULL,'Obusan','lmo8711@gmail.com','09867026178'),(10,'Cyril',NULL,'Yoro','cy1545@gmail.com','09625944621'),(11,'Hermogenes Ireneo',NULL,'Macablo','him5910@gmail.com','09997689582'),(12,'Renato Elisha',NULL,'Calagos','rec5390@gmail.com','09709590940'),(13,'Diosdado Eleazar',NULL,'Calinao','dec9030@gmail.com','09510801927'),(14,'Natalia',NULL,'Dimawili','nd6869@gmail.com','09397395566'),(15,'Faustino',NULL,'Belano','fb7827@gmail.com','09517216119'),(16,'Donald',NULL,'Tacwigan','dt8479@gmail.com','09512337073'),(17,'Gemma',NULL,'Mangtalan','gm4359@gmail.com','09684507791'),(18,'Jean',NULL,'Macalino','jm2232@gmail.com','09110450257'),(19,'Lilliane',NULL,'Bactad','lb1466@gmail.com','09643670942'),(20,'Wilma Wilson',NULL,'Pansoy','wwp5880@gmail.com','09349393105');
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

-- Dump completed on 2023-05-10 12:23:32
