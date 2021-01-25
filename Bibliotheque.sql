CREATE DATABASE  IF NOT EXISTS `gbibliotheque` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gbibliotheque`;
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
-- Table structure for table `abonne`
--

DROP TABLE IF EXISTS `abonne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abonne` (
  `matricule` char(12) NOT NULL,
  `nom_abonne` varchar(50) DEFAULT NULL,
  `prenom_abonne` varchar(50) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `telephone` char(30) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_adhesion` date DEFAULT NULL,
  `inscript` tinyint(1) DEFAULT NULL,
  `id_categorie` int DEFAULT NULL,
  PRIMARY KEY (`matricule`),
  KEY `id_categorie` (`id_categorie`),
  CONSTRAINT `abonne_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie_prof` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abonne`
--

LOCK TABLES `abonne` WRITE;
/*!40000 ALTER TABLE `abonne` DISABLE KEYS */;
INSERT INTO `abonne` VALUES ('080698573756','Vucic','Aleksandra','26 Rue es Amandier, 92013 Nanterre','0624845525','1985-06-08','2019-01-05',1,2),('123456789101','Vucic','Aleksandar','7 Rue Henri Barbusse, Aubervilliers','06209861675','1975-10-03','2020-10-03',1,5),('555666777999','France','Auber','Opera Garnier',NULL,'1995-09-18','2010-12-01',1,1),('789654123000','Erreur','Test','55 Rue de Vincennes, 93100 Montreuil','000011111','2000-01-01','2001-01-01',0,1);
/*!40000 ALTER TABLE `abonne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auteur` (
  `id_auteur` int NOT NULL,
  `nom_auteur` varchar(50) DEFAULT NULL,
  `prenom_auteur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auteur`
--

LOCK TABLES `auteur` WRITE;
/*!40000 ALTER TABLE `auteur` DISABLE KEYS */;
INSERT INTO `auteur` VALUES (1,'PUPIN','Mihajlo'),(2,'HOSSEINI','Khaled'),(3,'DIOME','Fatou');
/*!40000 ALTER TABLE `auteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliothecaire`
--

DROP TABLE IF EXISTS `bibliothecaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliothecaire` (
  `id_bibliothecaire` int NOT NULL,
  `nom_bibliothe` varchar(50) DEFAULT NULL,
  `prenom_bibliothe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_bibliothecaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliothecaire`
--

LOCK TABLES `bibliothecaire` WRITE;
/*!40000 ALTER TABLE `bibliothecaire` DISABLE KEYS */;
INSERT INTO `bibliothecaire` VALUES (1,'Mitrovic','Tea'),(2,'Zdravko','Kristina'),(3,'Vucic','Andra');
/*!40000 ALTER TABLE `bibliothecaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_prof`
--

DROP TABLE IF EXISTS `categorie_prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie_prof` (
  `id_categorie` int NOT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_prof`
--

LOCK TABLES `categorie_prof` WRITE;
/*!40000 ALTER TABLE `categorie_prof` DISABLE KEYS */;
INSERT INTO `categorie_prof` VALUES (1,'Enfant'),(2,'Etudiant'),(3,'Agriculteur exploitant'),(4,'Artisan. commerçant. chef entreprise'),(5,'Cadre et professions intellectuelles supérieures'),(6,'Professions intermédiaires'),(7,'Employe'),(8,'Ouvrier'),(9,'Retraités'),(10,'Autres personnes sans activité professionnelle');
/*!40000 ALTER TABLE `categorie_prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demande`
--

DROP TABLE IF EXISTS `demande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demande` (
  `code_catalogue` int NOT NULL,
  `matricule` char(12) NOT NULL,
  `dateDemande` date DEFAULT NULL,
  `satisfaction` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`code_catalogue`,`matricule`),
  KEY `matricule` (`matricule`),
  CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`code_catalogue`) REFERENCES `livre` (`code_catalogue`),
  CONSTRAINT `demande_ibfk_2` FOREIGN KEY (`matricule`) REFERENCES `abonne` (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demande`
--

LOCK TABLES `demande` WRITE;
/*!40000 ALTER TABLE `demande` DISABLE KEYS */;
INSERT INTO `demande` VALUES (111111,'123456789101','2021-01-15',0),(222222,'123456789101','2020-01-15',1),(333333,'789654123000','1998-01-12',1);
/*!40000 ALTER TABLE `demande` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `ecrire`
--

DROP TABLE IF EXISTS `ecrire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecrire` (
  `code_catalogue` int NOT NULL,
  `id_auteur` int NOT NULL,
  PRIMARY KEY (`code_catalogue`,`id_auteur`),
  KEY `id_auteur` (`id_auteur`),
  CONSTRAINT `ecrire_ibfk_1` FOREIGN KEY (`code_catalogue`) REFERENCES `livre` (`code_catalogue`),
  CONSTRAINT `ecrire_ibfk_2` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecrire`
--

LOCK TABLES `ecrire` WRITE;
/*!40000 ALTER TABLE `ecrire` DISABLE KEYS */;
INSERT INTO `ecrire` VALUES (111111,1),(222222,2),(333333,3);
/*!40000 ALTER TABLE `ecrire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editeur` (
  `id_editeur` int NOT NULL,
  `maison_edition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_editeur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editeur`
--

LOCK TABLES `editeur` WRITE;
/*!40000 ALTER TABLE `editeur` DISABLE KEYS */;
INSERT INTO `editeur` VALUES (1,'BELFOND'),(2,'LE LIVRE DE POCHE'),(3,'Vromant, Bruxelles - Paris');
/*!40000 ALTER TABLE `editeur` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `genre_theme`
--

DROP TABLE IF EXISTS `genre_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_theme` (
  `id_genre` int NOT NULL,
  `genre_litteraire` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_theme`
--

LOCK TABLES `genre_theme` WRITE;
/*!40000 ALTER TABLE `genre_theme` DISABLE KEYS */;
INSERT INTO `genre_theme` VALUES (1,'bande dessinée'),(2,'science-fiction'),(3,'policier'),(4,'autobiographie'),(5,'histoire');
/*!40000 ALTER TABLE `genre_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livre` (
  `code_catalogue` int NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `id_genre` int DEFAULT NULL,
  PRIMARY KEY (`code_catalogue`),
  KEY `id_genre` (`id_genre`),
  CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre_theme` (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES (111111,'Du berger au savant',4),(222222,'Mille soleils splendides',5),(333333,'Le Ventre de l Atlantique',4);
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre_mot_cle`
--

DROP TABLE IF EXISTS `livre_mot_cle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livre_mot_cle` (
  `code_catalogue` int NOT NULL,
  `id_mot_cle` int NOT NULL,
  PRIMARY KEY (`code_catalogue`,`id_mot_cle`),
  KEY `id_mot_cle` (`id_mot_cle`),
  CONSTRAINT `livre_mot_cle_ibfk_1` FOREIGN KEY (`code_catalogue`) REFERENCES `livre` (`code_catalogue`),
  CONSTRAINT `livre_mot_cle_ibfk_2` FOREIGN KEY (`id_mot_cle`) REFERENCES `mot_cle` (`id_mot_cle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre_mot_cle`
--

LOCK TABLES `livre_mot_cle` WRITE;
/*!40000 ALTER TABLE `livre_mot_cle` DISABLE KEYS */;
INSERT INTO `livre_mot_cle` VALUES (222222,1),(333333,2),(111111,3),(333333,3),(111111,4),(222222,5),(333333,6);
/*!40000 ALTER TABLE `livre_mot_cle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mot_cle`
--

DROP TABLE IF EXISTS `mot_cle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mot_cle` (
  `id_mot_cle` int NOT NULL,
  `mot` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mot_cle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mot_cle`
--

LOCK TABLES `mot_cle` WRITE;
/*!40000 ALTER TABLE `mot_cle` DISABLE KEYS */;
INSERT INTO `mot_cle` VALUES (1,'guerre'),(2,'pauvreté'),(3,'immigration'),(4,'serbe'),(5,'femme'),(6,'football');
/*!40000 ALTER TABLE `mot_cle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rayon`
--

DROP TABLE IF EXISTS `rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rayon` (
  `code_rayon` int NOT NULL,
  `emplacement` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_rayon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rayon`
--

LOCK TABLES `rayon` WRITE;
/*!40000 ALTER TABLE `rayon` DISABLE KEYS */;
INSERT INTO `rayon` VALUES (1,'en-bas'),(2,'rez-de-chaussée'),(3,'premier-etage'),(4,'deuxieme-etage'),(5,'en-haut');
/*!40000 ALTER TABLE `rayon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 23:31:37
