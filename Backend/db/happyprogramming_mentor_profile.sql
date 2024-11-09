CREATE DATABASE  IF NOT EXISTS `happyprogramming` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `happyprogramming`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: happyprogramming
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `mentor_profile`
--

DROP TABLE IF EXISTS `mentor_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_profile` (
  `mentorid` int NOT NULL AUTO_INCREMENT,
  `git_hub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `linked_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`mentorid`) USING BTREE,
  KEY `FKggsxu0vvlx7txmcyl555cl68i` (`userid`) USING BTREE,
  CONSTRAINT `FKggsxu0vvlx7txmcyl555cl68i` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_profile`
--

LOCK TABLES `mentor_profile` WRITE;
/*!40000 ALTER TABLE `mentor_profile` DISABLE KEYS */;
INSERT INTO `mentor_profile` VALUES (1,'https://github.com/example','https://linkedin.com/in/example','Full Stack DEV','/api/image/hXtOyTei-200345648_811465002815146_8129641240195606278_n.jpg','1',1),(2,'https://github.com/example','https://linkedin.com/in/example','CSS','/api/image/hXtOyTei-200345648_811465002815146_8129641240195606278_n.jpg','2',2),(3,'https://github.com/example','https://linkedin.com/in/example','Full Stack DEV','/api/image/hXtOyTei-200345648_811465002815146_8129641240195606278_n.jpg','3',3),(4,'aaa','a','Full Stack DEV','/api/image/hXtOyTei-200345648_811465002815146_8129641240195606278_n.jpg','aq',8),(5,'abc','ac','a','','a',8),(6,'1','1','1','','1',13),(7,'abc','abc','abc','','abc',13),(8,'test up to mentor','.','test up to mentor','/api/image/9w7Oiipy-Screenshot 2024-09-17 151211.png','test up to mentor',2),(9,'Test Up To Mentor','Test Up To Mentor','Test Up To Mentor','/api/image/hXtOyTei-200345648_811465002815146_8129641240195606278_n.jpg','Test Up To Mentor',15);
/*!40000 ALTER TABLE `mentor_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10  3:18:42
