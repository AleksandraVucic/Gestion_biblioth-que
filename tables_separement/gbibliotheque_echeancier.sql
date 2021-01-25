-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gbibliotheque
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `echeancier`
--

DROP TABLE IF EXISTS `echeancier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `echeancier` (
  `code_catalogue` int NOT NULL,
  `matricule` char(12) NOT NULL,
  `code_rayon` int NOT NULL,
  `datePret` date DEFAULT NULL,
  `dateRetour` date DEFAULT NULL,
  PRIMARY KEY (`code_catalogue`,`matricule`,`code_rayon`),
  KEY `matricule` (`matricule`),
  KEY `code_rayon` (`code_rayon`),
  CONSTRAINT `echeancier_ibfk_1` FOREIGN KEY (`code_catalogue`) REFERENCES `livre` (`code_catalogue`),
  CONSTRAINT `echeancier_ibfk_2` FOREIGN KEY (`matricule`) REFERENCES `abonne` (`matricule`),
  CONSTRAINT `echeancier_ibfk_3` FOREIGN KEY (`code_rayon`) REFERENCES `rayon` (`code_rayon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `echeancier`
--

LOCK TABLES `echeancier` WRITE;
/*!40000 ALTER TABLE `echeancier` DISABLE KEYS */;
INSERT INTO `echeancier` VALUES (111111,'080698573756',3,'2020-02-01',NULL),(111111,'123456789101',2,'2020-01-01','2020-02-01'),(222222,'080698573756',1,'2019-12-01','2019-12-07'),(333333,'789654123000',5,'2000-01-01','2000-12-01');
/*!40000 ALTER TABLE `echeancier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 23:24:09
