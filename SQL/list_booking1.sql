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
-- Table structure for table `booking1`
--

DROP TABLE IF EXISTS `booking1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `from_p` varchar(10) DEFAULT NULL,
  `to_p` varchar(10) DEFAULT NULL,
  `date_j` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `seat_number` int(11) NOT NULL,
  `total_price` double(10,2) DEFAULT NULL,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking1`
--

LOCK TABLES `booking1` WRITE;
/*!40000 ALTER TABLE `booking1` DISABLE KEYS */;
INSERT INTO `booking1` VALUES (1,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','Non/AC','chennai','kumbakonam','2024-03-19','21:20:00',2,500.00,'2024-03-02 14:51:05'),(2,'siva','08012457674','siva@gmail.com','AC','chennai','madurai','2024-03-02','20:23:00',2,500.00,'2024-03-02 14:53:40'),(3,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','Non/AC','chennai','madurai','2024-03-02','09:50:00',1,350.00,'2024-03-03 06:26:11'),(4,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','15:11:00',2,700.00,'2024-03-03 08:41:18'),(5,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','18:31:00',2,700.00,'2024-03-03 12:01:47'),(6,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','21:00:00',2,700.00,'2024-03-04 05:29:12'),(7,'naveen','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','10:53:00',3,1050.00,'2024-03-05 05:23:41'),(8,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','10:24:00',2,700.00,'2024-03-06 04:55:02'),(9,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:51:04'),(10,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:51:38'),(11,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:51:42'),(12,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:52:04'),(13,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:54:15'),(14,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:55:53'),(15,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 05:59:15'),(16,'sabari','08012457674','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','11:20:00',1,350.00,'2024-03-06 06:01:43'),(17,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','17:31:00',2,700.00,'2024-03-08 11:01:56'),(18,'SASIKUMAR G','+919003511471','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','21:41:00',2,700.00,'2024-03-08 16:11:30'),(19,'sabari','04578216413','sasitsk2003@gmail.com','AC','chennai','madurai','2024-03-02','15:37:00',2,700.00,'2024-03-09 09:07:17');
/*!40000 ALTER TABLE `booking1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-10 23:34:51
