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
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `surface` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `ccaa` varchar(255) DEFAULT NULL,
  `prov` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (1,7,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Canarias Palmas, Las','1x1.3','true','2023-05-13 21:34:11','Canarias','Palmas, Las'),(2,6,'Trastero Actualizado','rgcefwfewq ewq f\ndcwq\ncrwq\nR\nQW','Cantabria Cantabria','1x1.3','true','2023-05-13 21:34:11','Cantabria','Cantabria'),(12,7,'Trastero en Almeria','Pequeño trastero cerca del centro con espacio abundante y zona segura','Andalucía Almería','1x1.5','true','2023-05-20 21:45:30','Andalucía','Almería'),(13,7,'Zona comun Madrid','Pequeño trastero en madrid centro con suficiente espacio','Madrid, Comunidad de Madrid','1x1.2','true','2023-05-20 21:46:09','Madrid, Comunidad de','Madrid'),(14,7,'Trastero Alejania Barcelona','Trastero pequeño en zona ruristica pueblo patela','Cataluńa Barcelona','0.5x0.5','true','2023-05-20 21:47:16','Cataluńa','Barcelona'),(15,6,'Título 1','Descripción 1','Cantabria Cantabria','2.5x4.7','true','2022-03-15 10:30:00','Cantabria','Cantabria'),(16,7,'Título 2','Descripción 2','Cantabria Cantabria','3.2x5.9','false','2023-05-10 14:45:00','Cantabria','Cantabria'),(17,36,'Título 3','Descripción 3','Cantabria Cantabria','4.1x6.3','true','2021-08-27 09:15:00','Cantabria','Cantabria'),(18,37,'Título 4','Descripción 4','Cantabria Cantabria','1.8x3.5','false','2024-01-05 16:20:00','Cantabria','Cantabria'),(19,6,'Título 5','Descripción 5','Cantabria Cantabria','2.7x4.2','true','2022-09-18 11:50:00','Cantabria','Cantabria'),(20,7,'Título 6','Descripción 6','Cantabria Cantabria','3.9x5.1','false','2023-12-01 13:25:00','Cantabria','Cantabria'),(21,36,'Título 7','Descripción 7','Cantabria Cantabria','2.4x3.8','true','2021-11-23 08:05:00','Cantabria','Cantabria'),(22,37,'Título 8','Descripción 8','Cantabria Cantabria','1.6x2.9','false','2024-04-30 17:35:00','Cantabria','Cantabria'),(23,6,'Título 9','Descripción 9','Cantabria Cantabria','3.1x4.6','true','2022-06-05 12:40:00','Cantabria','Cantabria'),(24,7,'Título 10','Descripción 10','Cantabria Cantabria','2.2x5.7','false','2023-09-07 15:55:00','Cantabria','Cantabria'),(25,36,'Título 11','Descripción 11','Cantabria Cantabria','4.8x6.7','true','2021-10-12 07:10:00','Cantabria','Cantabria'),(26,37,'Título 12','Descripción 12','Cantabria Cantabria','1.3x3.4','false','2024-02-15 18:45:00','Cantabria','Cantabria'),(27,6,'Título 13','Descripción 13','Cantabria Cantabria','2.9x4.1','true','2022-07-21 09:55:00','Cantabria','Cantabria'),(28,7,'Título 14','Descripción 14','Cantabria Cantabria','3.5x5.3','false','2023-10-28 12:20:00','Cantabria','Cantabria'),(29,36,'Título 15','Descripción 15','Cantabria Cantabria','4.5x6.1','true','2021-12-09 14:30:00','Cantabria','Cantabria'),(30,37,'Título 16','Descripción 16','Cantabria Cantabria','1.9x3.2','false','2024-03-24 16:55:00','Cantabria','Cantabria'),(31,6,'Título 17','Descripción 17','Cantabria Cantabria','2.8x4.5','true','2022-05-17 10:05:00','Cantabria','Cantabria'),(32,7,'Título 18','Descripción 18','Cantabria Cantabria','3.7x5.5','false','2023-08-22 13:35:00','Cantabria','Cantabria'),(33,36,'Título 19','Descripción 19','Cantabria Cantabria','3.3x4.8','true','2021-09-28 15:50:00','Cantabria','Cantabria'),(34,37,'Título 20','Descripción 20','Cantabria Cantabria','1.5x2.7','false','2024-06-06 17:15:00','Cantabria','Cantabria'),(35,6,'Título 21','Descripción 21','Cantabria Cantabria','2.3x4.3','true','2022-08-11 11:25:00','Cantabria','Cantabria'),(36,7,'Título 22','Descripción 22','Cantabria Cantabria','3.4x5.2','false','2023-11-16 14:50:00','Cantabria','Cantabria'),(37,36,'Título 23','Descripción 23','Cantabria Cantabria','4.4x6.2','true','2021-11-01 07:20:00','Cantabria','Cantabria'),(38,37,'Título 24','Descripción 24','Cantabria Cantabria','1.7x3.1','false','2024-04-09 16:40:00','Cantabria','Cantabria'),(39,6,'Título 25','Descripción 25','Cantabria Cantabria','2.6x4.4','true','2022-07-02 10:50:00','Cantabria','Cantabria'),(40,7,'Título 26','Descripción 26','Cantabria Cantabria','3.8x5.4','false','2023-10-05 13:15:00','Cantabria','Cantabria'),(41,36,'Título 27','Descripción 27','Cantabria Cantabria','2.2x3.9','true','2021-12-29 15:30:00','Cantabria','Cantabria'),(42,37,'Título 28','Descripción 28','Cantabria Cantabria','1.4x2.8','false','2024-02-26 18:05:00','Cantabria','Cantabria'),(43,6,'Título 29','Descripción 29','Cantabria Cantabria','2.7x4.1','true','2022-06-24 09:15:00','Cantabria','Cantabria'),(44,7,'Título 30','Descripción 30','Cantabria Cantabria','2.1x5.8','false','2023-09-27 12:40:00','Cantabria','Cantabria'),(45,36,'Título 31','Descripción 31','Cantabria Cantabria','4.7x6.6','true','2021-10-20 06:45:00','Cantabria','Cantabria'),(46,37,'Título 32','Descripción 32','Cantabria Cantabria','1.2x3.3','false','2024-01-19 16:10:00','Cantabria','Cantabria'),(47,6,'Título 33','Descripción 33','Cantabria Cantabria','2.9x4.2','true','2022-09-12 10:25:00','Cantabria','Cantabria'),(48,7,'Título 34','Descripción 34','Cantabria Cantabria','3.5x5.6','false','2023-12-19 13:50:00','Cantabria','Cantabria'),(49,36,'Título 35','Descripción 35','Cantabria Cantabria','4.6x6.4','true','2021-08-13 08:15:00','Cantabria','Cantabria'),(50,37,'Título 36','Descripción 36','Cantabria Cantabria','1.8x3.2','false','2024-03-08 17:40:00','Cantabria','Cantabria'),(51,6,'Título 37','Descripción 37','Cantabria Cantabria','2.8x4.3','true','2022-05-05 11:50:00','Cantabria','Cantabria'),(52,7,'Título 38','Descripción 38','Cantabria Cantabria','3.6x5.4','false','2023-08-08 15:15:00','Cantabria','Cantabria'),(53,36,'Título 39','Descripción 39','Cantabria Cantabria','3.2x4.7','true','2021-09-17 17:30:00','Cantabria','Cantabria'),(54,37,'Título 40','Descripción 40','Cantabria Cantabria','1.5x2.9','false','2024-05-25 16:55:00','Cantabria','Cantabria'),(55,6,'Título 41','Descripción 41','Cantabria Cantabria','2.4x4.2','true','2022-08-27 09:05:00','Cantabria','Cantabria'),(56,7,'Título 42','Descripción 42','Cantabria Cantabria','3.3x5.3','false','2023-11-30 12:30:00','Cantabria','Cantabria'),(57,36,'Título 43','Descripción 43','Cantabria Cantabria','4.5x6.3','true','2021-10-04 07:55:00','Cantabria','Cantabria'),(58,37,'Título 44','Descripción 44','Cantabria Cantabria','1.7x3.4','false','2024-04-17 16:20:00','Cantabria','Cantabria'),(59,6,'Título 45','Descripción 45','Cantabria Cantabria','2.6x4.5','true','2022-07-10 10:30:00','Cantabria','Cantabria'),(60,7,'Título 46','Descripción 46','Cantabria Cantabria','3.9x5.5','false','2023-10-13 13:55:00','Cantabria','Cantabria'),(61,36,'Título 47','Descripción 47','Cantabria Cantabria','2.1x3.8','true','2021-12-07 15:10:00','Cantabria','Cantabria'),(62,37,'Título 48','Descripción 48','Cantabria Cantabria','1.4x2.6','false','2024-02-04 17:35:00','Cantabria','Cantabria'),(63,6,'Título 49','Descripción 49','Cantabria Cantabria','2.7x4.4','true','2022-06-30 09:45:00','Cantabria','Cantabria'),(64,7,'Título 50','Descripción 50','Cantabria Cantabria','2.2x5.9','false','2023-09-22 13:10:00','Cantabria','Cantabria'),(65,36,'Título 51','Descripción 51','Cantabria Cantabria','4.8x6.5','true','2021-11-27 06:30:00','Cantabria','Cantabria'),(66,37,'Título 52','Descripción 52','Cantabria Cantabria','1.3x3.5','false','2024-02-23 16:55:00','Cantabria','Cantabria'),(67,6,'Título 53','Descripción 53','Cantabria Cantabria','2.9x4.3','true','2022-09-05 10:15:00','Cantabria','Cantabria'),(68,7,'Título 54','Descripción 54','Cantabria Cantabria','3.5x5.5','false','2023-12-12 13:40:00','Cantabria','Cantabria'),(69,36,'Título 55','Descripción 55','Cantabria Cantabria','4.4x6.1','true','2021-11-18 08:00:00','Cantabria','Cantabria'),(70,37,'Título 56','Descripción 56','Cantabria Cantabria','1.6x3.3','false','2024-04-05 17:25:00','Cantabria','Cantabria'),(71,6,'Título 57','Descripción 57','Cantabria Cantabria','2.8x4.2','true','2022-06-22 11:35:00','Cantabria','Cantabria'),(72,7,'Título 58','Descripción 58','Cantabria Cantabria','3.7x5.6','false','2023-09-25 14:00:00','Cantabria','Cantabria'),(73,36,'Título 59','Descripción 59','Cantabria Cantabria','2.3x3.7','true','2021-11-03 07:55:00','Cantabria','Cantabria'),(74,37,'Título 60','Descripción 60','Cantabria Cantabria','1.9x2.8','false','2024-03-20 17:20:00','Cantabria','Cantabria');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `profile_desc` varchar(120) DEFAULT 'No hay descripcion',
  `followers` int DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `membership` tinyint DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'elLucas','1234','No hay descripcion',0,'Lucas','Ordeño',NULL,0,'2023-05-08 20:40:33'),(7,'Ana','1234','Mi nombre es Ana, soy diseñadora y tengo varios trasteros para alquilar, CONTACTAME <3',0,'Ana','Ana','ana@ana.com',0,'2023-05-08 20:43:27'),(36,'Pedro','1234','Soy PEDROO!!!!',0,'Pedro','Pedro','a@a.com',0,'2023-05-08 21:39:47'),(37,'Antonio23','1234','No hay descripcion',0,'Antonio','Colmenero',NULL,0,'2023-05-20 21:55:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-20 23:08:05
