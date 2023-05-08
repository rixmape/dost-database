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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dost_admin`
--

LOCK TABLES `dost_admin` WRITE;
/*!40000 ALTER TABLE `dost_admin` DISABLE KEYS */;
INSERT INTO `dost_admin` VALUES (1,'Lucio Rowena',NULL,'Dumdum','lrd4158@gmail.com','09184186265'),(2,'Carlos Alberto',NULL,'Malijan','cam3998@gmail.com','09097394788'),(3,'Jean George',NULL,'Obusan','jgo7086@gmail.com','09889813549'),(4,'Nadine',NULL,'Retuta','nr5352@gmail.com','09601344454'),(5,'Marion Kulas',NULL,'Duco','mkd3161@gmail.com','09300918978'),(6,'Isidra Ricardo',NULL,'Tayag','irt7160@gmail.com','09876950549'),(7,'Godofredo Arnulfo',NULL,'Bitagon','gab7011@gmail.com','09489536299'),(8,'Virgilio',NULL,'Buli','vb5586@gmail.com','09385533321'),(9,'Julita Milagros',NULL,'Ongkapin','jmo9772@gmail.com','09213523108'),(10,'Santiago Amparo',NULL,'Kaibigan','sak2393@gmail.com','09178112515'),(11,'Genevieve Faustina',NULL,'Diano','gfd6753@gmail.com','09345125588'),(12,'Ana Eloisa',NULL,'Bolosan','aeb7693@gmail.com','09366009054'),(13,'Rafa Guillermo',NULL,'Liboon','rgl5102@gmail.com','09139569103'),(14,'Christian Rogelio',NULL,'Banasan','crb4780@gmail.com','09533089092'),(15,'Raymond',NULL,'Manalansan','rm5135@gmail.com','09655421312'),(16,'Aldrin',NULL,'Aacain','aa4915@gmail.com','09240701863'),(17,'Aurelio Virgilio',NULL,'Mangayagam','avm1170@gmail.com','09146979007'),(18,'Marjorie Dominador',NULL,'Ugalino','mdu7764@gmail.com','09872097259'),(19,'Leslie',NULL,'Salire','ls6347@gmail.com','09006514490'),(20,'Valerie',NULL,'Basa','vb9870@gmail.com','09036536602'),(21,'Alfredo',NULL,'Pasquil','ap9701@gmail.com','09920676081'),(22,'Georgia',NULL,'Dayoan','gd3433@gmail.com','09520762654'),(23,'Yolanda',NULL,'Galit','yg4624@gmail.com','09691653274'),(24,'Gilberto',NULL,'Tomawis','gt9747@gmail.com','09104837914'),(25,'Cardo',NULL,'Ramoran','cr8437@gmail.com','09370217492'),(26,'Lorna Ciriaco',NULL,'Pisigan','lcp8043@gmail.com','09679372234'),(27,'Grace Gerardo',NULL,'Sabile','ggs2649@gmail.com','09170606753'),(28,'Gladys Gil',NULL,'Siababa','ggs1905@gmail.com','09119999731'),(29,'Edwin Emma',NULL,'Mabalon','eem2559@gmail.com','09730098367'),(30,'Allan',NULL,'Ulap / Ulep','au/u4362@gmail.com','09911428808'),(31,'Dwayne Joseph',NULL,'Katapang','djk5427@gmail.com','09029376880'),(32,'Maynard',NULL,'Inclan','mi5378@gmail.com','09811279807'),(33,'Alexander',NULL,'Managbanag','am4025@gmail.com','09133997429'),(34,'Veronica Jesusito',NULL,'Gaoiran','vjg5832@gmail.com','09910824582'),(35,'Ana Ricardo',NULL,'Cawilan','arc5229@gmail.com','09576574117'),(36,'Michaela Mari',NULL,'Tindongan','mmt6815@gmail.com','09360785879'),(37,'Juana',NULL,'Sorio','js5394@gmail.com','09741073461'),(38,'Sabrina Macario',NULL,'Adlawan','sma9370@gmail.com','09505169128'),(39,'Odette',NULL,'Cabuchao','oc8570@gmail.com','09285986207'),(40,'Francine',NULL,'Dimaunahan','fd3608@gmail.com','09846706923');
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

-- Dump completed on 2023-05-08 22:06:00
