-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 172.27.66.219    Database: spacefindy
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_username` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `surface` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `ccaa` varchar(45) DEFAULT NULL,
  `prov` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (1,7,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Canarias','Palmas, Las'),(2,8,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria'),(3,4,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria'),(4,7,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria'),(5,8,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria'),(6,4,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 19:14:26
