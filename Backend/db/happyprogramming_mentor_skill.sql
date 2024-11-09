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
-- Table structure for table `mentor_skill`
--

DROP TABLE IF EXISTS `mentor_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor_skill` (
  `mentor_skillid` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `years_of_exp` int DEFAULT NULL,
  `mentorid` int DEFAULT NULL,
  `skillid` int DEFAULT NULL,
  PRIMARY KEY (`mentor_skillid`) USING BTREE,
  KEY `FKb98gpwcltccf0sm3xbh2wtxa7` (`mentorid`) USING BTREE,
  KEY `FKt6dxo1q5n9ubs3ki577tpux7r` (`skillid`) USING BTREE,
  CONSTRAINT `FKb98gpwcltccf0sm3xbh2wtxa7` FOREIGN KEY (`mentorid`) REFERENCES `mentor_profile` (`mentorid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt6dxo1q5n9ubs3ki577tpux7r` FOREIGN KEY (`skillid`) REFERENCES `skill_category` (`skillid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,'4',5,3,4),(2,'5',5,3,5),(3,'Programming',5,2,1),(4,'2',5,2,2),(5,'3',5,2,3),(6,'aq',3,4,1),(7,'aq',3,4,5),(8,'a',4,5,2),(9,'a',4,5,1),(10,'a',4,5,3),(11,'a',4,5,4),(12,'1',1,6,1),(13,'1',1,6,2),(14,'a',2,7,1),(15,'a',2,7,2),(16,'a',2,7,3),(17,'a',2,7,4),(18,'a',2,7,5),(20,'a',2,7,7),(21,'test up to mentor',8,8,1),(22,'test up to mentor',8,8,2),(23,'test up to mentor',8,8,3),(24,'test up to mentor',8,8,4),(25,'test up to mentor',8,8,6),(26,'test up to mentor',8,8,7),(27,'test up to mentor',8,8,5),(28,'Test Up To Mentor',8,9,1),(29,'Test Up To Mentor',8,9,2),(30,'Test Up To Mentor',8,9,3),(31,'Test Up To Mentor',8,9,4),(32,'Test Up To Mentor',8,9,5),(33,'Test Up To Mentor',8,9,6),(34,'Test Up To Mentor',8,9,7);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10  3:18:41
