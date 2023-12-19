-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: Henni
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TV`
--

DROP TABLE IF EXISTS `TV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TV` (
  `idTV` int NOT NULL AUTO_INCREMENT,
  `Taille` varchar(45) DEFAULT NULL,
  `Prix` int DEFAULT NULL,
  `Marque` varchar(45) DEFAULT NULL,
  `Cause` varchar(45) DEFAULT NULL,
  `Fonctionnel` tinyint DEFAULT NULL,
  `Achetée` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTV`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TV`
--

LOCK TABLES `TV` WRITE;
/*!40000 ALTER TABLE `TV` DISABLE KEYS */;
INSERT INTO `TV` VALUES (34,'200',489,'Samsung','J\'ai explosé mon écran ',0,'1'),(35,'23',489,'Apple','J\'ai explosé mon écran ',0,'1'),(36,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(37,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(38,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(39,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(40,'27',159,'Samsung','J\'ai explosé mon écran ',0,'1'),(41,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(42,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(43,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(44,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(45,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(51,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(52,NULL,NULL,NULL,'J\'ai explosé mon écran ',0,NULL),(53,'23',159,'Sony','Coup de marteau',0,'1'),(54,'187',989,'Apple','Coup de pied ',0,'1');
/*!40000 ALTER TABLE `TV` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 21:58:33
