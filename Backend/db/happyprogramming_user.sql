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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` bit(1) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Hanoi','2002-02-28','anhnt88@gmail.com','Admin System',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0587654321',_binary '','admin'),(2,'Hanoi','3902-04-18','anhnt.it@gmail.com','Nguyen Tien Anh',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '','anhnt88'),(3,'Da Nang','3902-03-11','huongdn@gmail.com','Bui Tien Minh',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0923456789',_binary '','minhbt'),(4,'Hanoi - Viet Nam','2002-02-15','duymusical@gmail.com','Nguyen Tien Anh1',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0868884528',_binary '','anhnt'),(5,'âf','2015-01-16','anhntt@gmail.com','Thai Ba Quang Thien',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '\0','anhntt'),(6,'âf',NULL,'anhnttt@gmail.com','Bui Tien Minh',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '\0','anhntt88t'),(7,'âf','2003-02-01','anhttt@gmail.com','',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '\0','anh888'),(8,'Ha noi','2008-06-04','anh@gmail.com','Nguyen Van A',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '\0','anh'),(10,'Sample Address','1990-01-01','newadmin@example.com','New Admin',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0123456789',_binary '','newadmin'),(11,'a','2011-01-13','a1@gmail.com','q',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654322',_binary '\0','anh11'),(12,'a','2009-12-31','anh2@gmail.com','a',_binary '','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654323',_binary '\0','test1'),(13,'a','2009-12-30','testmentor@gmail.com','Nguyen Long Nhat',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0987654321',_binary '\0','testmentor'),(14,'Ha Noi','2005-11-07','admin@gmail.com','Dam Chien',_binary '\0','$2a$10$431pSOmnSMqXeCKESiG9qeS2C/R8mdteNI4xoeGTLpeq/j.avx/42','0359601009',_binary '\0','admin1'),(15,'Hanoi','2015-06-11','testuptomentor@gmail.com','Test Up To Mentor',_binary '\0','$2a$10$k/wVkoXi0odsRSfkmE4qxOb0OKfzspmF.tRo1RJV69bYt71cpR8NO','0987654321',_binary '\0','testuptomentor');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
