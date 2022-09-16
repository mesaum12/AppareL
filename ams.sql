-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `apparels`
--

DROP TABLE IF EXISTS `apparels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apparels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL,
  `is_new_arrival` varchar(255) DEFAULT NULL,
  `new_arrival` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apparels`
--

LOCK TABLES `apparels` WRITE;
/*!40000 ALTER TABLE `apparels` DISABLE KEYS */;
INSERT INTO `apparels` VALUES (22,'Men\'s Casual','Male',7000,'images.jpg',NULL,NULL,NULL),(23,'T-Shirt','Male',4000,'suit-png-16.png',NULL,NULL,NULL),(25,'Shirt','Male',2000,'pexels-photo-1631181.jpeg',NULL,NULL,'yes'),(26,'T-Shirt Summer','Male',6000,'117-1174891_men-t-shirt-hd-png-download.png',NULL,NULL,'yes'),(27,'T-Shirt Medium','Male',3000,'suit-png-16.png',NULL,NULL,'yes'),(29,'suit blue','Male',5600,'Tailor6.jpg',NULL,NULL,'yes');
/*!40000 ALTER TABLE `apparels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'8406919197','saurabh@gmail.com','saurabh','$2a$10$hVBDTwGabgs1vszc9GFncODKzbbI/VG/rlQ0Vu14.f7WdqFzqWmoG','ROLE_USER'),(2,'9534930851','admin@gmail.com','admin','$2a$10$VQSV12IQDwqb3fYioQI0a.LNMlOdJt.BIYcppmu3yMTPdsM8zlp1e','ROLE_ADMIN'),(3,'8406919197','hello@gmail.com','saurabh','$2a$10$qYpFLMvAhNUghW4pqYcrD.pcqE3MNpcAkC.Hz2A5F9h5ecLpHJ2g2','ROLE_USER'),(4,'79837897','saurabh2@gmail.com','test','$2a$10$9U4DCTN39ue05r7SxG8T2O2optIzkhu9nlspaWgvvVdj6fCEvDTP.','ROLE_USER'),(5,'9334072800','div@gmail.com','Divyanshu Kumar','$2a$10$WspR1.908hzR3RzijOGHdOQaSIx1QapYl.0/S/0mz7FMfmkijHWU.','ROLE_USER'),(7,'8406919197','admin@admin.com','Saurabh','$2a$10$p5xWsc2.arKtHYSnAzZmcOhOTqA9gIJkxY3nsrYYQnpzdeo1yzhVm','ROLE_ADMIN'),(8,'8406919197','user@user.com','Saurabh','$2a$10$iyflgxdngHB0RwdSMkmIWu/HWeObiKLhd9jHipXQeWSwNKri2oq.C','ROLE_ADMIN'),(11,'8406919197','user1@user.com','Saurabh','$2a$10$4.ttocSm0Y/.gMrY1pSFHeX6bN7UrsfrKTMABmEv3K.esTNoVSe76','ROLE_USER'),(12,'9787987890','abcd@abcd.com','abcd','$2a$10$WA6J8n7.Dq0WLuUVwrJ50exiRBq.6AmT9hUzH3YIywqC0yB6.KxBu','ROLE_USER');
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

-- Dump completed on 2022-09-04 13:37:22
