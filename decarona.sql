-- MySQL dump 10.13  Distrib 5.5.15, for Win32 (x86)
--
-- Host: localhost    Database: decarona
-- ------------------------------------------------------
-- Server version	5.5.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `decarona`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `decarona` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `decarona`;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'czarevitch','czarevitch@hotmail.com'),(2,'brightwork','brightwork@hotmail.com'),(3,'verkrampte','verkrampte@hotmail.com'),(4,'protectrix','protectrix@hotmail.com'),(5,'nudibranch','nudibranch@hotmail.com'),(6,'grandchild','grandchild@hotmail.com'),(7,'newfangled','newfangled@hotmail.com'),(8,'flugelhorn','flugelhorn@hotmail.com'),(9,'mythologer','mythologer@hotmail.com'),(10,'pluperfect','pluperfect@hotmail.com'),(11,'jellygraph','jellygraph@hotmail.com'),(12,'quickthorn','quickthorn@hotmail.com'),(13,'rottweiler','rottweiler@hotmail.com'),(14,'technician','technician@hotmail.com'),(15,'cowpuncher','cowpuncher@hotmail.com'),(16,'middlebrow','middlebrow@hotmail.com'),(17,'jackhammer','jackhammer@hotmail.com'),(18,'triphthong','triphthong@hotmail.com'),(19,'wunderkind','wunderkind@hotmail.com'),(20,'dazzlement','dazzlement@hotmail.com'),(21,'jabberwock','jabberwock@hotmail.com'),(22,'witchcraft','witchcraft@hotmail.com'),(23,'pawnbroker','pawnbroker@hotmail.com'),(24,'thumbprint','thumbprint@hotmail.com'),(25,'motorcycle','motorcycle@hotmail.com'),(26,'cryptogram','cryptogram@hotmail.com'),(27,'torchlight','torchlight@hotmail.com'),(28,'bankruptcy','bankruptcy@hotmail.com');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-08 22:52:22
