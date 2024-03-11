-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: list
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `routebus`
--

DROP TABLE IF EXISTS `routebus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routebus` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `From_p` varchar(30) DEFAULT NULL,
  `To_p` varchar(30) DEFAULT NULL,
  `t_date` date DEFAULT NULL,
  `st` time DEFAULT NULL,
  `et` time DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routebus`
--

LOCK TABLES `routebus` WRITE;
/*!40000 ALTER TABLE `routebus` DISABLE KEYS */;
INSERT INTO `routebus` VALUES (1001,'chennai','madurai','2024-03-02','07:00:00','15:00:00','NonAc','Seater'),(1002,'chennai','madurai','2024-03-02','08:00:00','16:00:00','Ac','Seater'),(1003,'chennai','madurai','2024-03-02','10:00:00','18:00:00','NonAc','Seater'),(1004,'chennai','madurai','2024-03-02','12:00:00','20:00:00','Ac','Seater'),(1005,'chennai','madurai','2024-03-02','14:00:00','23:00:00','Ac','Seater'),(1006,'chennai','madurai','2024-03-02','16:00:00','00:00:00','NonAc','Seater'),(1007,'chennai','madurai','2024-03-03','18:00:00','06:00:00','NonAc','Seater');
/*!40000 ALTER TABLE `routebus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 23:34:52
