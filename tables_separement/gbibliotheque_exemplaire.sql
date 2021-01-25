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
-- Table structure for table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exemplaire` (
  `code_catalogue` int NOT NULL,
  `code_rayon` int NOT NULL,
  `date_acquisition` date DEFAULT NULL,
  `code_etat` tinyint(1) DEFAULT NULL,
  `id_editeur` int DEFAULT NULL,
  `id_bibliothecaire` int DEFAULT NULL,
  PRIMARY KEY (`code_catalogue`,`code_rayon`),
  KEY `code_rayon` (`code_rayon`),
  KEY `id_editeur` (`id_editeur`),
  KEY `id_bibliothecaire` (`id_bibliothecaire`),
  CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`code_catalogue`) REFERENCES `livre` (`code_catalogue`),
  CONSTRAINT `exemplaire_ibfk_2` FOREIGN KEY (`code_rayon`) REFERENCES `rayon` (`code_rayon`),
  CONSTRAINT `exemplaire_ibfk_3` FOREIGN KEY (`id_editeur`) REFERENCES `editeur` (`id_editeur`),
  CONSTRAINT `exemplaire_ibfk_4` FOREIGN KEY (`id_bibliothecaire`) REFERENCES `bibliothecaire` (`id_bibliothecaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaire`
--

LOCK TABLES `exemplaire` WRITE;
/*!40000 ALTER TABLE `exemplaire` DISABLE KEYS */;
INSERT INTO `exemplaire` VALUES (111111,2,'1928-12-12',1,3,1),(111111,3,'1928-12-12',0,3,1),(222222,1,'2018-10-12',1,1,2),(333333,5,'2019-10-10',1,2,3);
/*!40000 ALTER TABLE `exemplaire` ENABLE KEYS */;
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
